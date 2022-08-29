$TempDir = [System.IO.Path]::GetTempPath()
cd $TempDir

cd ISONET-DEV-PACK

cd PYPACKS

pip install -r "PYPACKSLIST.txt"