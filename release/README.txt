==============================
README for RUN.exe
==============================

Introduction
------------------------------
Welcome to the RUN.exe utility. This executable is designed to automate specific power settings on your Windows machine, including setting the power plan to 'High Performance' and disabling power management settings for USB devices and the Intel Management Engine Interface.

Please note:
- This utility requires administrative privileges to execute.
- The executable might trigger antivirus or firewall alerts because it is not digitally signed.

Contents
------------------------------
1. RUN.exe - The main executable file.
2. powerplan.ps1 - PowerShell script to set the power plan to 'High Performance'.
3. powersettings-IMEI.ps1 - PowerShell script to disable power management settings for the Intel Management Engine Interface.
4. powersettings-USB.ps1 - PowerShell script to disable power management settings for USB devices.

Prerequisites
------------------------------
- Windows operating system.
- Administrative privileges to run the executable.

Usage Instructions
------------------------------
1. Run the executable:
   - Right-click on RUN.exe and select "Run as administrator".
   - Follow any prompts that appear to grant the necessary permissions.

2. The utility will execute the following actions:
   - Set the power plan to 'High Performance' + 'USB Selective Suspend' to 'Disabled.
   - Disable power management settings for the Intel Management Engine Interface in Device Manager.
   - Disable power management settings for USB devices in Device Manager.

Notes
------------------------------
- Running the executable will require administrative rights. Ensure you have the necessary permissions.
- The utility may trigger antivirus or firewall alerts because it is not digitally signed. This is a common reaction to unsigned executables. You can choose to allow the executable through your antivirus/firewall settings if you trust the source.
- The scripts executed by the utility perform system-level changes. Ensure you understand the changes being made before running the executable.

Troubleshooting
------------------------------
- If the executable fails to run, ensure you have administrative privileges.
- Check your antivirus or firewall settings if the executable is being blocked.

Contact Information
------------------------------
For further assistance, please contact 'nkowalchuk@sinclairdental.com'.

Disclaimer
------------------------------
Use this utility at your own risk. The author is not responsible for any damage caused by running this executable. Ensure you understand the actions being performed by the utility before execution.

==============================
End of README
==============================
