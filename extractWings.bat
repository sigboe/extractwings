SET "mypath=%~dp0"
SET "mydir=%mypath:~0,-1%"
7z e -tzip -aos -o"%mypath:~0,-1%" %* romwings.bin -r
7z e -tzip -aos -o"%mypath:~0,-1%" %* Kick12.rom -r
cd "%mydir%"
".\dd.exe" "if=%mydir%\romwings.bin" "of=%mydir%\wings-1.adf" bs=1 skip=4 count=901120
".\dd.exe" "if=%mydir%\romwings.bin" "of=%mydir%\wings-2.adf" bs=1 skip=901124 count=901120
