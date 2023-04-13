# noMAMEs

MAME is awesome. MAME ROMSets are great archives, but quite massive to navigate. 

I don't want to download the whole thing to then filter them and delete most of it. 

Here some real simple Windows Batch scripts so you can download only the ROMs you actually want.

## How to use

1. Read below to see which `.bat` file you want. 

2. Download that `bat` file.

3. Execute it.

4. Wait until done.

## bat files

- Just Neo Geo games: `download_mame_neogeo.bat`

- Just "All killer, no filler" games (as of MAME 0.244): `download_mame0.244_akfn.bat`

## Contributing

MAME 0.244 is quite old. Sure there's more awesome stuff supported; I just didn't care to search more and trusted the most cited resource. I also only went with the Neo Geo nostalgia, which is the one that hits me.

PRs to expand the lists are welcome.

PRs to add more lists are welcome.

PRs to create a "master" downloader which then allows you to choose the list you want are welcome.

PRs to create a "dat" downloder which takes a dat file as an input are welcome (I'm thinking about http://adb.arcadeitalia.net/).

PRs to make the downloader look in other places or take the base URL dynamically from GitHub are welcome.

PRs to instead download the chose files from the main torrent instead are welcome. 

PRs to paralelise downloads and smash archive.org are not welcome. 

You get the idea.
