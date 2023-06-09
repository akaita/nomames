:: This script downloads MAME 0.253 "All Killer, No Filler" ROMS from archive.org
:: The list was compiled for MAME 0.244 in http://forum.arcadecontrols.com/index.php?topic=149708.0

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
1942.zip
1943.zip
19xx.zip
2020bb.zip
64street.zip
88games.zip
aerofgts.zip
agallet.zip 
airbustr.zip
alexkidd.zip
aliens.zip
aliensyn.zip
alpham2.zip
alpine.zip
altbeast.zip
androdun.zip
anteater.zip
aof3.zip
aoh.zip
aquarush.zip
ar_bios.zip
ar_spot.zip
arabfgt.zip
arabian.zip
archrivl.zip
armwar.zip
astdelux.zip
astorm.zip
astrob.zip
asurabus.zip
atarisy1.zip
athena.zip
avengers.zip
avsp.zip
avspirit.zip
baddudes.zip
bagman.zip
bakubaku.zip
bangball.zip
bangbead.zip
batcir.zip
batrider.zip
batsugun.zip
battlera.zip
bayroute.zip
bbakraid.zip
bchopper.zip
berzerk.zip
bgaregga.zip
bigfight.zip
bigkarnk.zip
biomtoy.zip
bionicc.zip
bjourney.zip
blazeon.zip
blazstar.zip
bldyror2.zip
blitz.zip
blkheart.zip
blktiger.zip
blockhl.zip
blockout.zip
bloodwar.zip
blswhstl.zip
bmaster.zip
bnzabros.zip
bombjack.zip
bonkadv.zip
boogwing.zip
bosco.zip
brapboys.zip
breakrev.zip
brvblade.zip
bsmt2000.zip
bssoccer.zip
bstars2.zip
btime.zip
btoads.zip
bubblem.zip
bubbles.zip
bublbob2.zip
bublbobl.zip
buckrog.zip
bucky.zip
burningf.zip
cadash.zip
calibr50.zip 
captaven.zip
captcomm.zip
carket.zip
carnival.zip
cawing.zip
cbaj.zip
cbasebal.zip
centiped.zip
chinagat.zip
choplift.zip
chukatai.zip
circusc.zip
cloak.zip
clshroad.zip
cninja.zip
cobracom.zip
columns.zip
commando.zip
congo.zip
contra.zip
cosmogng.zip
cotton.zip
cotton2.zip
cottonbm.zip
coh1000c.zip
coh3002c.zip
crimec.zip
crimfght.zip
crimfght.zip
crkdown.zip
crospang.zip
crysbios.zip
crysking.zip
csclub.zip
cshift.zip
ctribe.zip
cupfinal.zip
cybattlr.zip
cyberbal.zip
cyberlip.zip
cybots.zip
cyvern.zip
daraku.zip
darius.zip
darius2.zip
dariusg.zip
dbreed.zip
ddonpach.zip
ddp2.zip
ddpdojt.zip
ddragon.zip
ddragon2.zip
ddsom.zip
ddtod.zip
deathsml.zip
defender.zip
demonwld.zip
denjinmk.zip
deroon.zip
desertwr.zip
dharma.zip
digdug.zip
digdug2.zip
dimahoo.zip
dino.zip
dkong.zip
dkong3.zip
dkongjr.zip
dmnfrnt.zip 
doapp.zip
docastle.zip
dogyuun.zip
dommy.zip
dondokod.zip
dowild.zip
dragnblz.zip
drgnbstr.zip
drmario.zip
drmicro.zip
dspirit.zip
dynagear.zip 
dynwar.zip
ecofghtr.zip
edf.zip
edrandy.zip
ehrgeiz.zip
eightman.zip
elevator.zip
elvactr.zip
emeralda.zip
eprom.zip
espgal.zip
espgal2.zip
esprade.zip
eswat.zip
excitebk.zip
extdwnhl.zip
eyes.zip
fantjour.zip
fatfury3.zip
fbfrenzy.zip
feversos.zip
ffight.zip
fgtlayer.zip
flamegun.zip
flipshot.zip
footchmp.zip
frogger.zip
fshark.zip
fstarfrc.zip
futaribl.zip
ga2.zip
gaia.zip
gaiapols.zip
galaga.zip
galaga88.zip
galaxian.zip
gametngk.zip
ganryu.zip
garou.zip
gauntdl.zip
gauntleg.zip
gauntlet.zip
gaxeduel.zip
gberet.zip
gbusters.zip
gdarius2.zip
gemini.zip
gforce2.zip
ghostb.zip
ghostlop.zip
ghouls.zip
gigawing.zip
gng.zip
goldnaxe.zip
gorf.zip
gradiusb.zip
gradius3.zip
gradius4.zip
gratia.zip
grdians.zip
growl.zip
gtmr.zip
gunbird.zip
gunbird2.zip
gundamex.zip
gundhara.zip
gunforc2.zip
gunforce.zip 
gunfront.zip
gunlock.zip
gunsmoke.zip
guwange.zip
gwar.zip
gyruss.zip
hattrick.zip
hbarrel.zip
hcastle.zip
hellfire.zip
hharry.zip
hook.zip
htchctch.zip
hvysmsh.zip
hyperath.zip
hyprduel.zip
ibarablk.zip
ikari.zip
ikari3.zip
indytemp.zip
inthunt.zip
invaders.zip
jjack.zip
jjsquawk.zip 
joemacr.zip
jojo.zip
journey.zip
joust.zip
joust2.zip
joyjoy.zip
jrpacman.zip
junglek.zip
junofrst.zip
kangaroo.zip
karnov.zip
kbash.zip
keith.zip
ket.zip
kicker.zip
kidniki.zip
kingofb.zip
kinst.zip
kinst2.zip
kizuna.zip
klax.zip
knights.zip
kod.zip
kof2000.zip
kof96.zip
kof98.zip
konamigv.zip
konamigx.zip
kov.zip
kov2.zip
krull.zip
ladybug.zip
landmakr.zip
lastbld2.zip
lbowling.zip
ldrun.zip
legendoh.zip
lethalth.zip
lightbr.zip
liquidk.zip
liquidk.zip 
locomotn.zip
lresort.zip
lwings.zip
mace.zip
mace.zip
machbrkr.zip
macross.zip
macross2.zip
macrossp.zip
madgear.zip
magdrop3.zip
magerror.zip
maglord.zip
mappy.zip
martmast.zip
marvland.zip
matrim.zip
mazinger.zip
mcatadv.zip
megaman2.zip
megaplay.zip
mercs.zip 
metalb.zip
metamrph.zip
metmqstr.zip
midres.zip
midssio.zip
miexchng.zip
milliped.zip
mk2.zip
mmatrix.zip
mmpork.zip
momoko.zip
moomesa.zip
mooncrst.zip
motos.zip
mp_soni2.zip
mp_sonic.zip
mp_sor2.zip
mpatrol.zip
mrdo.zip
mrdrillr.zip
msgogo.zip
msh.zip
mshvsf.zip
mslug.zip
mslug2.zip
mslug3.zip
mslug4.zip
mslug5.zip
mslugx.zip
mspacman.zip
msword.zip
mtlchamp.zip
mtrap.zip
mtwins.zip
mushisam.zip
mushitam.zip
mutnat.zip
mvsc.zip
mwalk.zip
mysticri.zip
mystwarr.zip
nagano98.zip
nam1975.zip
namco50.zip
namco51.zip
namco52.zip
namco53.zip
namco54.zip
namcoc70.zip
namcoc75.zip
namcoc76.zip
narc.zip
nbahangt.zip
nbajam.zip
nbbatman.zip
ncommand.zip
ncv1.zip
nemesis.zip
nemo.zip
neodrift.zip
neogeo.zip
nibbler.zip
ninjak.zip
nitd.zip
nost.zip
nslasher.zip
nspirit.zip
nwarr.zip
ohmygod.zip
openice.zip
ordyne.zip
orlegend.zip
oscar.zip
osman.zip
outfxies.zip
outzone.zip
overtop.zip
p47.zip
p47aces.zip
pacland.zip
25pacman.zip
pandoras.zip
panic.zip
parodius.zip
pblbeach.zip
pbobble2.zip
pbobble4.zip
penbros.zip
pengo.zip
pepper2.zip
pgm.zip
pgoal.zip
phelios.zip
phoenix.zip
pigout.zip
pigskin.zip
pinkswts.zip
pktgaldx.zip
pkunwar.zip
plotting.zip
plsmaswd.zip
plusalph.zip
pooyan.zip
popeye.zip
pow.zip
prehisle.zip
primrage.zip
progear.zip
coh1002e.zip
puckman.zip
pulirula.zip
pulstar.zip
punchout.zip
punisher.zip
punkshot.zip
pururun.zip
puyopuy2.zip
puzzledp.zip
puzzli2.zip
puzzloop.zip
pwrgoal.zip
pzloop2.zip
qbert.zip
qix.zip
qsound.zip
raiden.zip
raiden2.zip
rallyx.zip
rambo3.zip
rampage.zip
rastan.zip
raystorm.zip
rbff2.zip
rdft2.zip
recalh.zip 
rfjet.zip
ringdest.zip
riotcity.zip
riskchal.zip
rmpgwt.zip
roboarmy.zip
robocop.zip
robocop2.zip
robotron.zip
rocnrope.zip
rodland.zip
rohga.zip
rollerg.zip
rotd.zip
rsgun.zip
rthun2.zip 
rthunder.zip
rtype.zip
rtype2.zip
rtypeleo.zip
rungun.zip
rushhero.zip
rvschool.zip
ryujin.zip
s1945ii.zip
s1945iii.zip
sabotenb.zip
sailormn.zip
salamand.zip
salmndr2.zip
samsh5sp.zip
samsho2.zip
samsho3.zip
samuraia.zip
sbagman.zip
scobra.zip
scontra.zip
scramble.zip
scregg.zip
searchar.zip
secretag.zip
sengoku.zip
sengoku3.zip
senkyu.zip
sexyparo.zip
sf2ce.zip
sfa2.zip
sfa3.zip
sfex2p.zip
sfex.zip
sfiii3.zip
sgemf.zip
shadfrce.zip
sharrier.zip
shdancer.zip
shienryu.zip
shimpact.zip
shinobi.zip
shocktr2.zip
shocktro.zip
shollow.zip
sidearms.zip
silentd.zip
silkroad.zip
simpbowl.zip
simpsons.zip
skns.zip
skykid.zip
slammast.zip
slapshot.zip
snowbro2.zip
snowbros.zip
socbrawl.zip
sokyugrt.zip
soldivid.zip
sonicwi2.zip
soulclbr.zip
spacedx.zip
spang.zip 
spdodgeb.zip
speedspn.zip
spelunkr.zip
spf2t.zip
spidman.zip
spinmast.zip
splatter.zip
ssf2t.zip
ssi.zip
ssideki3.zip
ssriders.zip 
sstriker.zip
stakwin2.zip
stdragon.zip
stmblade.zip
stonebal.zip
strahl.zip
stratof.zip
strider.zip
stvbios.zip
suprmrio.zip
suratk.zip
svc.zip
svcpcb.zip
coh1000t.zip
coh3002t.zip
tapper.zip
tbowl.zip
tbyahhoo.zip
tcobra2.zip
teddybb.zip
tehkanwc.zip
tekken3.zip
tektagt.zip
tengai.zip
tenkomor.zip
terracre.zip
terraf.zip
tetrisp2.zip
tgm2.zip
theroes.zip
thndrx2.zip
thndzone.zip
thoop.zip
thunderx.zip
tigeroad.zip
timber.zip
timeplt.zip
timesold.zip
tmnt.zip
tmnt2.zip
tms32031.zip
tnzs.zip
toki.zip
tokkae.zip
tophuntr.zip
coh1002m.zip
trackfld.zip
trojan.zip
truxton.zip
ts2.zip
tumblep.zip
turfmast.zip
tutankhm.zip
twincobr.zip
twineag2.zip
twineagl.zip
twinhawk.zip
twinspri.zip
uccops.zip
ultennis.zip
ultrax.zip
umk3.zip
unsquad.zip
uopoko.zip
vamphalf.zip
vanguard.zip
vasara.zip
vasara2.zip
vball.zip
vendetta.zip
vf.zip
victroad.zip
vigilant.zip
viostorm.zip
viprp1.zip
vsav.zip
coh1002v.zip
wakuwak7.zip
wardner.zip
warriorb.zip
waterski.zip
watrball.zip
wb3.zip
wbml.zip
wboy.zip
twcup90.zip
wg3dh.zip
whp.zip
willow.zip
winspike.zip
wiz.zip
wizdfire.zip
wjammers.zip
wndrplnt.zip
wof.zip
wow.zip
wrally.zip
wwfmania.zip
wwfwfest.zip
xevi3dg.zip
xevious.zip
xexex.zip
xmcota.zip
xmen.zip
xmultipl.zip
xmvsf.zip
xsleena.zip
xybots.zip
ym2608.zip
zaxxon.zip
zerowing.zip
zookeep.zip
        ) do ( 
            echo Downloading file %%r...
            powershell -Command "(New-Object Net.WebClient).DownloadFile('%archiveUrl%/%%r', '%folderPath%/%%r')"
        )

echo All files have been downloaded to %folderPath%
