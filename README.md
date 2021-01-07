This is a small windows script to help extract Wings! amiga disks from the GOG release.

# Requirements

7z should be in your path, I got this on Windows by installing 7zip

# Instructions

1. Install Wings!
2. find the Wings.exe, typically in "C:\GOG Games\Wings! Classic"
3. drag and drop it over the extractwings.bat file
4. you should now have two .adf files wings-1.adf and wings-2.adf these are the game disks

# Linux
For Linux, things are simpler

```
7z e -tzip -aos Wings.exe romwings.bin -r
dd if=romwings.bin of=wings-1.adf bs=1 skip=4 count=901120
dd if=romwings.bin of=wings-2.adf bs=1 skip=901124 count=901120
```
Get Wings.exe by installing Wings! using wine, or extract the setup file using innoextract

# Credits

I found the disks using a hexeditor and asking questions on irc for the purpouse of another project I had a couple of years ago https://github.com/sigboe/pie-galaxy
Someone asked me for a Windows friendly method

Windows binaries for dd and the dependencies libiconv2.dll and libintl3.dll redistributed from https://sourceforge.net/projects/gnuwin32/ and are legal to distribute under the GPLv3+ lisence as long as I point at the source. libinconv and libintl3 are LGPL.

# License

This script contains 3 lines of functional code, I share it as public domain. This script is provided as documentation and a tool. Only request is if you use this in another project, I would appreciate if you gave credit.
