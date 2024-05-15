==============================
README for RUN.exe
==============================

PowerSettingsUtility
------------------------------
This executable is designed to automate specific power settings on your Windows machine, including setting the power plan to 'High Performance' and disabling power management settings for USB devices and the Intel Management Engine Interface.

Please note:
- This utility requires administrative privileges to execute.
- The executable might trigger antivirus or firewall alerts because it is not digitally signed.

Contents
------------------------------
1. RUN.exe - The main executable file.
2. powerplan.ps1 - PowerShell script to set the power plan to 'High Performance'.
3. powersettings-IMEI.ps1 - PowerShell script to disable power management settings for the 'Intel Management Engine Interface' in Device Manager.
4. powersettings-USB.ps1 - PowerShell script to disable power management settings for all USB devices in Device Manager.

Prerequisites
------------------------------
- Windows operating system.
- Administrative privileges to run the executable.

Usage Instructions
------------------------------
1. Run the executable:
   - Right-click on RUN.exe and select "Run as administrator".
   - Follow any prompts that appear to grant the necessary permissions.

Notes
------------------------------
- Running the executable will require administrative rights. Ensure you have the necessary permissions.
- The utility may trigger antivirus or firewall alerts because it is not digitally signed. This is a common reaction to unsigned executables. You can choose to allow the executable through your antivirus/firewall settings if you trust the source.
- The scripts executed by the utility perform system-level changes. Ensure you understand the changes being made before running the executable.
- The executable does not need the ps1 scripts to be present in the directory, they are simply included for troubleshooting.

Troubleshooting
------------------------------
- If the executable fails to run, ensure you have administrative privileges.
- Check your antivirus or firewall settings if the executable is being blocked.
- If the executable is causing too many issues just simply run the powershell (ps1) scripts one-by-one as administrator to recieve the same results.

Contact Information
------------------------------
For further assistance, please contact 'nkowalchuk@sinclairdental.com'.

Disclaimer
------------------------------
Use this utility at your own risk. The author is not responsible for any damage caused by running this executable. Ensure you understand the actions being performed by the utility before execution.

==============================
End of README
==============================
