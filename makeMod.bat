@echo off

del *.iwd
del mod.ff

xcopy ui ..\..\raw\ui /SYI
xcopy english ..\..\raw\english /SYI

copy /Y mod.csv ..\..\zone_source
cd ..\..\bin
linker_pc.exe -language english -compress -cleanup mod
cd ..\mods\wardaddy
copy ..\..\zone\english\mod.ff

7za a -r -tzip z_wardaddy.iwd images
