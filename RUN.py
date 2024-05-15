import os
import subprocess
import sys
import ctypes

def is_admin():
    try:
        return ctypes.windll.shell32.IsUserAnAdmin()
    except:
        return False

def run_as_admin(script, description):
    try:
        print(f"Running {description}...")
        result = subprocess.run(
            ["powershell", "-NoProfile", "-ExecutionPolicy", "Bypass", "-File", script],
            capture_output=True,
            text=True
        )
        if result.returncode == 0:
            print(f"{description} completed successfully.")
            print(result.stdout)
        else:
            print(f"{description} failed with return code {result.returncode}.")
            print("Standard Output:\n", result.stdout)
            print("Standard Error:\n", result.stderr)
    except subprocess.CalledProcessError as err:
        print(f"Error: {description} failed. {err}")

def main():
    script_dir = os.path.dirname(os.path.abspath(__file__))

    if getattr(sys, 'frozen', False):
        script_dir = os.path.join(sys._MEIPASS)

    scripts = [
        ("powerplan.ps1", "Setting power plan to High Performance"),
        ("powersettings-IMEI.ps1", "Disabling power settings for Intel Management Engine Interface"),
        ("powersettings-USB.ps1", "Disabling USB Selective Suspend")
    ]
    
    for script, description in scripts:
        script_path = os.path.join(script_dir, script)
        if os.path.exists(script_path):
            run_as_admin(script_path, description)
            print()
        else:
            print(f"Script {script} not found in {script_dir}.")
    
    print("All scripts have been executed.")

if __name__ == "__main__":
    if is_admin():
        main()
    else:
        ctypes.windll.shell32.ShellExecuteW(
            None, "runas", sys.executable, __file__, None, 1
        )
