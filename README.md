# noMAMEs

MAME is awesome. MAME ROMSets are great archives, but quite massive to navigate. 

I don't want to download the whole thing to then filter them and delete most of it. 

Here some real simple Windows Batch scripts so you can download only the ROMs you actually want:

| file | description | size |
|   -  |      -      |   -  |
| [download_mame_neogeo.bat](download_mame_neogeo.bat) | Neo Geo games | 157 roms (3'31GB) |
| [download_mame_aknf.bat](download_mame_aknf.bat) | Arcade Controls' "All killer, no filler" games | 657 roms (5'78GB) |
| [download_mame_klov100.bat](download_mame_klov100.bat) | Museum of Game's Killer List of Videogames Top 100 games | 99 roms (619MB) |

## How to use

1. Read above to choose the `.bat` file you want. 

2. Download that `.bat` file.

3. Execute it and wait until done.

You might want some `.dat` file with the complete ROMSet to get nice pretty titles you can actually read. Look for `MAME full sets --> DatFile ... (merged)` : https://pleasuredome.github.io/pleasuredome/mame/

## Contributing

AKNF was compiled for MAME 0.244 which is quite old. Sure there's more awesome stuff supported today; I just didn't care to search more and trusted the most cited resource. I also only went with the Neo Geo nostalgia, which is the one that hits me.

PRs to expand the lists are welcome.

PRs to add more lists are welcome.

PRs to create a "master" downloader which then allows you to choose the list you want are welcome.

PRs to create a "dat" downloder which takes a dat file as an input are welcome (I'm thinking about http://adb.arcadeitalia.net/).

PRs to make the downloader look in other places or take the base URL dynamically from GitHub are welcome.

PRs to instead download the chose files from the main torrent instead are welcome. 

PRs to paralelise downloads and smash archive.org are not welcome. 

You get the idea.
