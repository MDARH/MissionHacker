#!/usr/bin/env bash
cd "$(dirname "$0")"
HTML_PATH="$(pwd -W 2>/dev/null || cygpath -w "$(pwd)" 2>/dev/null || pwd)"
HTML_PATH="${HTML_PATH//\\/\/}"
FILE_URL="file:///${HTML_PATH}/assignment.html"
PDF_OUT="${HTML_PATH}/Assignment-04_Md-Abdur-Razzaque_Batch-11.pdf"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PDF_OUT" "$FILE_URL" && echo "PDF rebuilt."
