# SNES Scrub

Are you sitting on a bunch of old DOS-era SNES ROMs with weird, abbreviated filenames and dubious extra bytes? Does the fact that you're the kind of person who would still have DOS-era SNES ROMs in your possession haunt you on sleepless nights? This tool can help you with one of those things.

`snes_scrub` searches the input directory (the current directory by default) for files with `.sfc`, `.smc`, or `.swc` extensions, and compares their SHA1 hashes to the no-intro.org SNES dataset. It will also try and hash the file minus the first 512 bytes, in case the ROM has a vestigial SMC header prepended. Any matching no-intro files are copied to a output directory (`./scrubbed` by default), renamed using the no-intro.org filenames and stripped of their old SMC headers, if they had any.

## Installation

You have to have Python 3 installed. If that's good, then:

```
python3 -m pip install snes_scrub
```

## Example usage

From any directory with SNES ROMs, simply run `snes_scrub` and any ROM files in that directory will be processed and stored in a subdirectory called `scrubbed`.

If you want to use different input/output directories:

```
snes_scrub --input /example/rom/directory --output ./clean
```

will read files from the `/example/rom/directory` directory and put cleaned files in a `clean` subdirectory off your current working directory.

`snes_scrub --help` gives detailed usage info.

## Build

Theoretically, on Linux/MacOS:

```
make build
```

If that succeeds, you can install directly from the local wheel file using:

```
python3 -m pip install dist/snes_scrub-0.1.0-py3-none-any.whl
```
