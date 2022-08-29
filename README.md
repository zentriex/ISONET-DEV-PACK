# ISONET DEVELOPER PACKAGE

## INTRODUCTION

### Disclaimer for contents and edits
This pack has been developed on an Isolated network and will be edited accordingly with placeholders to ensure security and integrity are maintained.
All software has been removed to conserve space and been replaced with placeholder text to represent the application installers.

### Disclaimer for monetary gain and use of code
This pack is not to be used for monetary gain in any way. I originally developed it to easily install a large amount of packages I needed for my
users on my isolated network. Rather than install this 10,000 times I developed this to install everything once per machine and make my life easier.
Thanks for reading and feel free to peruse my simple code.

## ACTUAL READ ME USED IN PACKAGE

***READ AND FOLLOW INSTRUCTIONS***
####
<|1|> Open powershell as admin and run the following lines of code:

```
$TempDir = [System.IO.Path]::GetTempPath()
cd $TempDir

Add-Type -AssemblyName PresentationFramework
$Folder = 'ISONET-DEV-PACK'
[System.Windows.MessageBox]::Show("Now testing to see if folder [$Folder] exists")
if (Test-Path -Path $Folder) {
    [System.Windows.MessageBox]::Show("ISONET-DEV-PACK FOUND. Software will now begin installing.")
} else {
    [System.Windows.MessageBox]::Show("ISONET-DEV-PACK NOT FOUND. Executing copy. . .")
    Copy-Item -Path "PATH_HIDDEN" -Destination $TempDir -Recurse -PassThru
}

cd $Folder
```
## 
<|2|> Start the main script without changing the directory by using .\DEVPACK.ps1
## 
<|3|> IF SCRIPT FAILS ON PYTHON PACKAGES INSTALL - Not all installs are fast and while normally 6 minutes is more than enough time, it's not guarenteed with 
<|3|> slower systems. Simply restart the python packages install script after 5 minutes by typing or pasting the following command into powershell in the SAME DIR:

.\PY_RUN_PACKS.ps1
