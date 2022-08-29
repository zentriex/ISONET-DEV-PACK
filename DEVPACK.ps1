Write-Output $text @"

                              NOW INSTALLING
______________________________________________________________________________
||                                                                          ||
||                          ISONET DEVELOPER PACK                           ||
||                                                                          ||
||                   DEVELOPED AND MAINTAINED BY ZENTRIEX                   ||
||      ANY QUESTIONS OR CONCERNS PLEASE DM OR OPEN AN ISSUE ON GITHUB      ||
||                                                                          ||
|| THIS PACK IS DEVELOPED AS A BASE FOR LEARNING POWERSHELL AND SOME PYTHON ||
||   PROGRAMMING I HAVE PICKED UP AS A RESULT OF MY WORK. BECAUSE OF THAT   ||
||    I HAVE BEEN DEDICATING MY EXTRA TIME, (THE LITTLE THAT I HAVE), TO    ||
||       LEARNING NEW WAYS TO AUTOMATE MY WORK AND MAKE MY JOB EASIER.      || 
||                                                                          ||
||                                                                          ||
||    I SHOULDN'T HAVE TO SAY IT, BUT FOLLOW OPEN SOURCE LICENSE LAWS AND   ||
||  PROVIDE ALL SOURCE CODE TO PUBLIC REPOSITORIES AS REQUESTED. THIS CODE  ||
|| AND ITS CONTENTS ARE NOT TO BE USED FOR PROFIT IN ANY WAY AND SHOULD NOT ||
||          BE CLAIMED IN ANY PRIVATE REPOSITORY FOR SAID PROFIT.           ||
||                                                                          ||
||    ... IDK WHY YOU WOULD ANYWAYS, BUT STILL. DON'T DO IT. THANKS :)      ||
||__________________________________________________________________________||
"@

### This installs Anaconda
Write-Output "Anaconda3 2021 will now begin installing"
Start-Process Anaconda3-2021.11-Windows-x86_64.exe -ArgumentList "/InstallationType=AllUsers /RegisterPython=1 /S"

### This installs Python
Write-Output "Python will now begin installing"
Start-Process python-3.10.0-amd64.exe -ArgumentList "/quiet InstallAllUsers=1 PrependPath=1"

### This installs This installs GIT
Write-Output "GIT is now installing"
Start-Process Git-2.35.3-64-bit.exe -ArgumentList "/VERYSILENT /NORESTART"

### This installs Notepad++
Write-Output "Notepad++ is now installing"
Start-Process npp.7.9.5.Installer.x64.exe -ArgumentList "/S"

### This installs VS Code
Write-Output "Visual Studio Code is now installing"
Start-Process VSCodeSetup-x64-1.59.1.exe -ArgumentList "/VERYSILENT /NORESTART /MERGETASKS=!runcode"

### Informs user of Waiting for installs to complete.
Write-Output "Python packages will now install after Python has completed installing."

### Sets the script to sleep for 6 minutes to make sure installs of Anaconda and Python have completed.
Start-Sleep -Seconds 360

### Opens up a new powershell window as admin and runs/installs all python packages 
### listed in the PY_RUN_PACKS.ps1 script. Follow README instructions if install fails.
Start-Process powershell -verb runas{.\PY_RUN_PACKS.ps1}

### Here's an ardvaark telling you you're done :)
Write-Output $text @"
       _.---._   /\\
    ./'       "--`\//
  ./              o \          .-----.
 /./\  )______   \__ \        ( done! )
./  / /\ \   | \ \  \ \       /`-----'
   / /  \ \  | |\ \  \7--- ooo ooo ooo ooo ooo ooo
--------------------------------------------------
"@














