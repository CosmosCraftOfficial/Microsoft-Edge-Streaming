# Microsoft-Edge-Streaming
Are you streaming from Microsoft Edge? Use this script! Forces HDR, Surround sound, and DHCP!<br>
<br />
Go to your `C:\` drive
Create a new folder called scripts<br>
<br />
You will get a log file to view after executed in the Scripts folder you just created and it will be called EdgeLauncherLog.<br>
<br />
To run this on every system startup:
Past the downloaded Microsoft-Edge.ps1
Do `Win+R`
Enter shell:startup
Then hit enter key
Right click → New → Shortcut
Path: `powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\Microsoft-Edge.ps1"`
Name: Microsoft Edge<br>
<br />
If that doesn't work use Task Scheduler
Search for Task scheduler and run it as Admin
Create Task
General Tab:
Name: Microsoft Edge Custom Launcher
Check: Run only when user is logged on
Optional: Run with highest privileges (if killing processes needs admin rights)
Triggers Tab:
New → Begin the task: At log on → click OK
Actions Tab:
New → Action: Start a program
Program/script:
`powershell.exe`
Add arguments:
`-ExecutionPolicy Bypass -File "C:\Scripts\Microsoft-Edge.ps1"`
Click OK
Conditions Tab (optional): uncheck “Start the task only if the computer is on AC power” for laptops
Settings Tab:
Check: “Run task as soon as possible after a scheduled start is missed”<br>
Click OK to save.
<br />
If these 2 options dont work then copy the Microsoft-Edge.ps1 to your Desktop and right click and press Run with Powershell before opening Edge.
