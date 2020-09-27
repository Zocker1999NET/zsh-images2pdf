#!/usr/bin/env zsh

function images2pdf() {
  if [ -z "$3" ]; then
    echo "Usage: images2pdf <lang> <output-pdf> <input-file> …" >&2;
    echo "  lang: languages separated by + characterized by 3 characters, example: deu+eng" >&2;
    return 2;
  fi
  convert "${@:3}" pdf:- | ocrmypdf -l "$1" - "$2";
}
