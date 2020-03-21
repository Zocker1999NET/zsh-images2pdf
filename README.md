# images2pdf Plugin for ZSH

Allows combining images to a searchable pdf using local ocr.

You can use this command if you have a bunch of images showing pages of a paper document
you want to share with others.
The resulting pdf document will show the images page per page
but also enable the user to search through recognized text parts for faster navigation.
The usage is simple, e.g. `images2pdf eng attachment.pdf *.jpg` or `images2pdf deu Rechnung.pdf page1.png page2.png`

## Repository clones

The original repository will be stored on [GitHub](https://github.com/Zocker1999NET/zsh-images2pdf).
You can use the original reopsitory if you want to use GitHub.
Also issues and pull requests will be collected there for convenience.

This repository will be cloned to my own server.
You can use the [clone](https://git.banananet.work/zsh-plugins/images2pdf) instead of this repository
if you want to avoid use GitHub.

## Installation

### Prerequisites

- `convert` (from ImageMagick)
- [`ocrmypdf`](https://github.com/jbarlow83/OCRmyPDF)

### zsh (without plugin support)

1. Clone project
2. Add following line to your `.zshrc`:
```sh
SOURCE "path/to/repo/images2pdf.plugin.zsh"
```

### oh-my-zsh

1. Clone project into `~/.oh-my-zsh/custom/plugins/images2pdf`
2. Add `images2pdf` to your plugin list
```sh
plugins=(… images2pdf …)
```

### Antigen

1. Add following line to your `.zshrc`:
```sh
antigen bundle Zocker1999NET/zsh-images2pdf # GitHub if default repository unchanged
antigen bundle https://git.banananet.work/zsh-plugins/images2pdf # Own Server
```

or

1. Add the repository to your plugin list
```sh
antigen bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-images2pdf # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/images2pdf # Own Server
  …
EOBUNDLES
```

### Antibody

1. Add following line to your `.zshrc`:
```sh
antibody bundle Zocker1999NET/zsh-images2pdf # GitHub if default repository unchanged
antibody bundle https://git.banananet.work/zsh-plugins/images2pdf # Own Server
```

or

1. Add the repository to your plugin list
```sh
antibody bundles <<EOBUNDLES
  …
  Zocker1999NET/zsh-images2pdf # GitHub if default repository unchanged
  https://git.banananet.work/zsh-plugins/images2pdf # Own Server
  …
EOBUNDLES
```

## Usage

`images2pdf LANG[+LANG…] OUTPUT [OPTS] INPUT…`

- `LANG`: Languages to detect for `ocrmypdf` given in standardized three-letter codes (ISO 639-2 Alpha-3).
  Multiple languages may be given by concatenating them using `+`, like `deu+eng`.
  Additional language packs may be installed following [this documentation of `ocrmypdf`](https://ocrmypdf.readthedocs.io/en/latest/languages.html#lang-packs)
- `OUTPUT`: The output name of the pdf document.
- `OPTS`: Additional options given to `convert`
  **Warning**: These options cannot be given before `OUTPUT` due to the way of processing the arguments given to the command.
- `INPUT`: All input files.
  These should be images supported by ImageMagick, otherwise the command may fail.
  The order the images were given to the command will be the resulting page order in the output document.

## License

This plugin is licensed under WTFPL.
Do the fuck you want to with this plugin,
but please contribute to this plugin if you have made any improvements which could be useful for others.

## Contribute

If you find any issue, report it
or fix it yourself and create a pull request.
