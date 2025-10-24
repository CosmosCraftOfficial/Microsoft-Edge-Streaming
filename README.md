# Microsoft-Edge-Streaming<br>
## Are you streaming from Microsoft Edge?<br>
### _Use this script! Forces HDR, Surround sound, and DHCP!_<br>
<br />
Go to your `C:\` drive<br>
Create a new folder called scripts<br>
<br />
You will get a log file to view after executed in the Scripts folder you just created and it will be called EdgeLauncherLog.<br>
<br />
To run this on every system startup:<br>
Paste the downloaded `Microsoft-Edge.ps1`<br>
Do `Win+R`<br>
Enter `shell:startup`<br>
Then hit enter key<br>
Right click → New → Shortcut<br>
Path: `powershell.exe -ExecutionPolicy Bypass -File "C:\Scripts\Microsoft-Edge.ps1"`<br>
Name: Microsoft Edge<br>
<br />
If that doesn't work use Task Scheduler<br>
Search for Task scheduler and run it as Admin<br>
Create Task<br>
General Tab:<br>
Name: `Microsoft Edge Custom Launcher`<br>
Check: Run only when user is logged on<br>
Optional: Run with highest privileges (if killing processes needs admin rights)<br>
Triggers Tab:<br>
New → Begin the task: At log on → click OK<br>
Actions Tab:<br>
New → Action: Start a program<br>
Program/script:<br>
`powershell.exe`<br>
Add arguments:
`-ExecutionPolicy Bypass -File "C:\Scripts\Microsoft-Edge.ps1"`<br>
Click OK<br>
Conditions Tab (optional): uncheck “Start the task only if the computer is on AC power” for laptops<br>
Settings Tab:<br>
Check: “Run task as soon as possible after a scheduled start is missed”<br>
Click OK to save.<br>
<br />
If these 2 options dont work then copy the Microsoft-Edge.ps1 to your Desktop and right click and press Run with Powershell before opening Edge.
