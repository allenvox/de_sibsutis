@echo off
set CS2install=D:\SteamLibrary\steamapps\common\Counter-Strike Global Offensive
set ProjectName=de_sibsutis
set MapName=alpha
"%CS2install%\game\bin\win64\resourcecompiler.exe" -threads 5 -fshallow -maxtextureres 256 -dxlevel 110 -quiet -unbufferedio -i "%CS2install%/content/csgo_addons/%ProjectName%/maps/%MapName%.vmap"  -noassert  -world -bakelighting -lightmapMaxResolution 1024 -lightmapDoWeld -lightmapVRadQuality 1 -lightmapLocalCompile -phys -vis -nav -retail -breakpad -nop4 -outroot "%AppData%\..\Local\Temp\valve\hammermapbuild\game" -lightmapcpu
xcopy "%AppData%\..\Local\Temp\valve\hammermapbuild\game\csgo_addons\%ProjectName%\maps\%MapName%.vpk" "%CS2install%\game\csgo_addons\%ProjectName%\maps\" /y
pause