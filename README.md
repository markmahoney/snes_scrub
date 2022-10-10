# SNES Scrub

Are you sitting on a bunch of old SNES ROMs with weird DOS filenames and dubious headers? Do you lie awake a night, haunted by the memories of those you've wronged? This tool can help with one of those things.

`snes_scrub` searches the current directory for any files with `.sfc`, `.smc`, or `.swc` extensions, and uses their SHA1 hash to try to find a matching entry in the no-intro.org SNES dataset. It will also try and hash the file minus the first 512 bytes, in case the ROM has had a SMC header prepended. All matching files are copied to a subdirectory (`scrubbed` by default), renamed using the no-intro.org filenames and stripped of their old SMC headers, if they had any.

## Installation

Linux/macOS

```sh
python3 -m pip install snes_scrub
```

## Build

TODO
