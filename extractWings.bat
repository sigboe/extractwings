SET "mypath=%~dp0"
SET "mydir=%mypath:~0,-1%"
SET "romdir=%mydir%\Media GOG"
7z x -tzip -aos -o"%mypath:~0,-1%" %* romwings.bin -r
cd "%mydir%"
".\dd.exe" "if=%romdir%\romwings.bin" "of=%mydir%\wings-1.adf" bs=1 skip=4 count=901120
".\dd.exe" "if=%romdir%\romwings.bin" "of=%mydir%\wings-2.adf" bs=1 skip=901124 count=901120