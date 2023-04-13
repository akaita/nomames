:: This script downloads MAME Neo Geo ROMS from archive.org
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
2020bba.zip
2020bbh.zip
3countb.zip
alpham2.zip
androdun.zip
aodk.zip
aof.zip
aof2.zip
aof2a.zip
aof3.zip
aof3k.zip
bakatono.zip
bangbead.zip
bjourney.zip
blazstar.zip
bngbeadn.zip
breakers.zip
breakrev.zip
bstars.zip
bstars2.zip
burningf.zip
burningh.zip
crsword.zip
ct2k3sa.zip
ct2k3sp.zip
cthd2003.zip
ctomaday.zip
cyberlip.zip
diggerma.zip
doubledr.zip
eightman.zip
fatfursa.zip
fatfursp.zip
fatfury1.zip
fatfury2.zip
fatfury3.zip
fbfrenzy.zip
fightfev.zip
fightfva.zip
flipshot.zip
fswords.zip
galaxyfg.zip
ganryu.zip
ganryun.zip
garou.zip
garoubl.zip
garoun.zip
garouo.zip
garoup.zip
gg-bios.zip
ghostlop.zip
goalx3.zip
gowcaizr.zip
gpilots.zip
gpilotsh.zip
gururin.zip
irrmaze.zip
janshin.zip
jockeygp.zip
joyjoy.zip
kabukikl.zip
karnovr.zip
kf10thep.zip
kf2k2mp.zip
kf2k2mp2.zip
kf2k2pla.zip
kf2k2pls.zip
kf2k3bl.zip
kf2k3bla.zip
kf2k3pcb.zip
kf2k3pl.zip
kf2k3upl.zip
kf2k5uni.zip
kizuna.zip
kof10th.zip
kof2000.zip
kof2000n.zip
kof2001.zip
kof2001h.zip
kof2002.zip
kof2002b.zip
kof2003.zip
kof2003h.zip
kof2k1nd.zip
kof2k2nd.zip
kof2k3nd.zip
kof2k4se.zip
kof2knd.zip
kof94.zip
kof95.zip
kof95h.zip
kof96.zip
kof96h.zip
kof97.zip
kof97a.zip
kof97pls.zip
kof98.zip
kof98k.zip
kof98n.zip
kof99.zip
kof99a.zip
kof99e.zip
kof99n.zip
kof99nd.zip
kof99p.zip
kofse2k4.zip
kog.zip
kotm.zip
kotm2.zip
kotmh.zip
lans2004.zip
lastblad.zip
lastbld2.zip
lastbldh.zip
lastsold.zip
lbowling.zip
legendos.zip
lresort.zip
magdrop2.zip
magdrop3.zip
maglord.zip
maglordh.zip
mahretsu.zip
marukodq.zip
matrim.zip
matrimbl.zip
matrimnd.zip
miexchng.zip
minasan.zip
mosyougi.zip
ms4plus.zip
ms5pcb.zip
ms5plus.zip
mslug.zip
mslug2.zip
mslug3.zip
mslug3b6.zip
mslug3h.zip
mslug3nd.zip
mslug4.zip
mslug4nd.zip
mslug5.zip
mslug5h.zip
mslug5nd.zip
mslugx.zip
mutnat.zip
nam1975.zip
ncombat.zip
ncombath.zip
ncommand.zip
neobombe.zip
neocd.zip
neocup98.zip
neodrift.zip
neogeo.zip
neomrdo.zip
neonopon.zip
neonopon1.zip
neonopon2.zip
neonopon3.zip
neopong.zip
neopong10.zip
ninjamas.zip
nitd.zip
nitdbl.zip
nitdn.zip
overtop.zip
panicbom.zip
pbobbl2n.zip
pbobblen.zip
pbobblna.zip
pgoal.zip
pnyaa.zip
popbounc.zip
preisl2n.zip
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
rbff1a.zip
rbff2.zip
rbff2h.zip
rbff2k.zip
rbffspec.zip
ridhero.zip
ridheroh.zip
roboarmy.zip
rotd.zip
rotdnd.zip
s1945p.zip
s1945pn.zip
samsh5nd.zip
samsh5sh.zip
samsh5sn.zip
samsh5sp.zip
samsho.zip
samsho2.zip
samsho3.zip
samsho3h.zip
samsho4.zip
samsho5.zip
samsho5b.zip
samsho5h.zip
samshoh.zip
savagere.zip
sdodgeb.zip
sengokh.zip
sengoku.zip
sengoku2.zip
sengoku3.zip
shocktr2.zip
shocktra.zip
shocktro.zip
sngoku3n.zip
socbrala.zip
socbrawl.zip
sonicwi2.zip
sonicwi3.zip
spinmast.zip
ss5shnd.zip
ssideki.zip
ssideki2.zip
ssideki3.zip
ssideki4.zip
stakwin.zip
stakwin2.zip
strhoop.zip
superspy.zip
svc.zip
svcboot.zip
svcnd.zip
svcpcb.zip
svcpcba.zip
svcplus.zip
svcplusa.zip
svcsplus.zip
syscheck.zip
tophunta.zip
tophuntr.zip
tpgolf.zip
trally.zip
turfmast.zip
twinspri.zip
tws96.zip
viewpoin.zip
vliner.zip
vlinero.zip
wakuwak7.zip
wh1.zip
wh1h.zip
wh1ha.zip
wh2.zip
wh2j.zip
wh2jh.zip
whp.zip
wjammers.zip
zedblade.zip
zintrckb.zip
zintrkcd.zip
zupapa.zip
zupapan.zip
        ) do ( 
            echo Downloading file %%r...
            powershell -Command "(New-Object Net.WebClient).DownloadFile('%archiveUrl%/%%r', '%folderPath%/%%r')"
        )

echo All files have been downloaded to %folderPath%
