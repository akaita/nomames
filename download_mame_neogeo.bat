:: This script downloads MAME 0.253 Neo Geo ROMS from archive.org
:: The list was painfully manually compiled by myself. It should be more or less complete

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
2020bb.zip
3countb.zip
alpham2.zip
androdun.zip
aodk.zip
aof.zip
aof2.zip
aof3.zip
bakatono.zip
bangbead.zip
bjourney.zip
blazstar.zip
breakers.zip
breakrev.zip
bstars.zip
bstars2.zip
burningf.zip
crsword.zip
ctomaday.zip
cyberlip.zip
diggerma.zip
doubledr.zip
eightman.zip
fatfursp.zip
fatfury1.zip
fatfury2.zip
fatfury3.zip
fbfrenzy.zip
fightfev.zip
flipshot.zip
galaxyfg.zip
ganryu.zip
garou.zip
ghostlop.zip
goalx3.zip
gowcaizr.zip
gpilots.zip
gururin.zip
irrmaze.zip
janshin.zip
jockeygp.zip
joyjoy.zip
kabukikl.zip
karnovr.zip
kf2k3pcb.zip
kizuna.zip
kof2000.zip
kof2001.zip
kof2002.zip
kof2003.zip
kof94.zip
kof95.zip
kof96.zip
kof97.zip
kof98.zip
kof99.zip
kotm.zip
kotm2.zip
lastblad.zip
lastbld2.zip
lbowling.zip
legendos.zip
lresort.zip
magdrop2.zip
magdrop3.zip
maglord.zip
mahretsu.zip
marukodq.zip
matrim.zip
miexchng.zip
minasan.zip
ms5pcb.zip
mslug.zip
mslug2.zip
mslug3.zip
mslug4.zip
mslug5.zip
mslugx.zip
mutnat.zip
nam1975.zip
ncombat.zip
ncommand.zip
neobombe.zip
neocdz.zip
neocup98.zip
neodrift.zip
neogeo.zip
neomrdo.zip
ninjamas.zip
nitd.zip
overtop.zip
panicbom.zip
pbobbl2n.zip
pbobblen.zip
pgoal.zip
pnyaa.zip
popbounc.zip
preisle2.zip
pspikes2.zip
pulstar.zip
puzzldpr.zip
puzzledp.zip
quizdai2.zip
quizdais.zip
quizkof.zip
ragnagrd.zip
rbff1.zip
rbff2.zip
rbffspec.zip
ridhero.zip
roboarmy.zip
rotd.zip
s1945p.zip
samsh5sp.zip
samsho.zip
samsho2.zip
samsho3.zip
samsho4.zip
samsho5.zip
savagere.zip
sdodgeb.zip
sengoku.zip
sengoku2.zip
sengoku3.zip
shocktr2.zip
shocktro.zip
socbrawl.zip
sonicwi2.zip
sonicwi3.zip
spinmast.zip
ssideki.zip
ssideki2.zip
ssideki3.zip
ssideki4.zip
stakwin.zip
stakwin2.zip
strhoop.zip
superspy.zip
svc.zip
svcpcb.zip
tophuntr.zip
tpgolf.zip
trally.zip
turfmast.zip
twinspri.zip
twsoc96.zip
viewpoin.zip
vliner.zip
wakuwak7.zip
wh1.zip
wh2.zip
wh2j.zip
whp.zip
wjammers.zip
zedblade.zip
zintrckb.zip
zupapa.zip
        ) do ( 
            echo Downloading file %%r...
            powershell -Command "(New-Object Net.WebClient).DownloadFile('%archiveUrl%/%%r', '%folderPath%/%%r')"
        )

echo All files have been downloaded to %folderPath%
