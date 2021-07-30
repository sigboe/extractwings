This is a small Windows script to help extract Wings! amiga disks and the Kickstart 1.2 firmware from the GOG release. Also possible to extract from Linux, as explained below.

# Requirements

To have [7-Zip](https://www.7-zip.org/) installed.

# Instructions

1. Open the command prompt and run the command `set PATH=%PATH%;C:\Program Files\7-Zip\` (change `C:\Program Files\7-Zip\` to where you installed 7-Zip, if you didn't install it in the default folder)
2. Download [extractwings's latest build](https://github.com/sigboe/extractwings/archive/refs/heads/master.zip)
3. Unzip extractwings somewhere you can find
4. Install Wings!
5. Find the Wings.exe, typically in "C:\GOG Games\Wings! Classic"
6. Drag and drop it over the extractwings.bat file
7. You should now have three new files, wings-1.adf, wings-2.adf and Kick12.rom. The .adf files are your ROM, and Kick12.rom is the firmware file.

# Linux
For Linux, things are simpler. Just run these commands from the folder with Wings.exe using the terminal:

```
7z e -tzip -aos Wings.exe romwings.bin -r
7z e -tzip -aos Wings.exe Kick12.rom -r
dd if=romwings.bin of=wings-1.adf bs=1 skip=4 count=901120
dd if=romwings.bin of=wings-2.adf bs=1 skip=901124 count=901120
```
Get Wings.exe by installing Wings! using wine, or extract the setup file using innoextract

# Credits

I found the disks using a hexeditor and asking questions on irc for the purpouse of another project I had a couple of years ago https://github.com/sigboe/pie-galaxy
Someone asked me for a Windows friendly method

Windows binaries for dd and the dependencies libiconv2.dll and libintl3.dll redistributed from https://sourceforge.net/projects/gnuwin32/ and are legal to distribute under the GPLv3+ lisence as long as I point at the source. libinconv and libintl3 are LGPL.

The Kickstart 1.2 firmware was found by @Auster-South-Anemoi 

# License

This script contains 3 lines of functional code, I share it as public domain. This script is provided as documentation and a tool. Only request is if you use this in another project, I would appreciate if you gave credit.
