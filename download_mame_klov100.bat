:: This script downloads MAME 0.253 Klov.com Top 100 ROMS from archive.org
:: The list was compiled by Museum of Game in https://www.arcade-museum.com/TOP100.php
:: Computer Space (1971) and Pong (1972) are missing in MAME. Apparently they where built with transistors (no CPU), so there's no ROM to emulate...

@echo off&setlocal

:: Update this URL if it ceases to exist. Hopefully not too difficult to search in archive.org
set archiveUrl=https://archive.org/download/mame-merged/mame-merged


:: Ask tuff to the user
set /p folderPath=Enter the path where you want to download the files: 

if not exist "%folderPath%" (
    mkdir "%folderPath%"
)

:check_empty
set numFiles=0
for /f %%f in ('dir /b "%folderPath%"') do (
    set /a numFiles+=1
)

if %numFiles% gtr 0 (
    set /p folderPath=The folder is not empty. Enter a different path where you want to download the files: 
    if not exist "%folderPath%" (
        mkdir "%folderPath%"
    )
    goto check_empty
)


:: Download ROMS
for %%r in (
tank.zip
biplane.zip
deathrac.zip
seawolf.zip
spaceinv.zip
asteroid.zip
galaxian.zip
llander.zip
astdelux.zip
bzone.zip
berzerk.zip
centiped.zip
defender.zip
mooncrst.zip
missile.zip
cpacman.zip
phoenix.zip
rallyx.zip
starcas.zip
tempest.zip
warlords.zip
wow.zip
cdkong.zip
cfrogger.zip
galaga.zip
gorf.zip
mtrap.zip
mspacman.zip
qix.zip
stargate.zip
vanguard.zip
bwidow.zip
bbtime.zip
digdug.zip
gnw_dkjr.zip
junglek.zip
joust.zip
mpatrol.zip
pengo.zip
polepos.zip
qbert.zip
robotron.zip
spacduel.zip
timeplt.zip
tmtron.zip
xevious.zip
zaxxon.zip
dlair.zip
elevator.zip
gyruss.zip
mhavoc.zip
spyhunt.zip
starwars.zip
tapper.zip
trackfld.zip
punchout.zip
choplift.zip
gauntlet.zip
gng.zip
indytemp.zip
arkanoid.zip
outrun.zip
rampage.zip
1943.zip
ddragon.zip
rastan.zip
roadblst.zip
sf.zip
baddudes.zip
cyberbal.zip
ghouls.zip
tetrisse.zip
tgoldnaxe.zip
gtg.zip
raiden.zip
rampart.zip
smashtv.zip
captaven.zip
kotm.zip
t2_l8.zip
txmen.zip
lethalen.zip
tmkombat.zip
nbajam.zip
daytona.zip
a51site4.zip
souledge.zip
sfrush.zip
hotd.zip
blitz.zip
gauntleg.zip
hotd2.zip
timecrs2.zip
carnevil.zip
f355.zip
hydrthnd.zip
18wheelr.zip
gauntdl.zip
rrvac.zip
        ) do ( 
            echo Downloading file %%r...
            powershell -Command "(New-Object Net.WebClient).DownloadFile('%archiveUrl%/%%r', '%folderPath%/%%r')"
        )

echo All files have been downloaded to %folderPath%
