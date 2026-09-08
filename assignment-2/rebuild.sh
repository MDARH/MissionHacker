#!/usr/bin/env bash
# Edit assignment.html, then run ./rebuild.sh to regenerate the PDF.
cd "$(dirname "$0")"
HTML_PATH="$(pwd -W 2>/dev/null || cygpath -w "$(pwd)" 2>/dev/null || pwd)"
HTML_PATH="${HTML_PATH//\\/\/}"
FILE_URL="file:///${HTML_PATH}/assignment.html"
PDF_OUT="${HTML_PATH}/Assignment-02_Md-Abdur-Razzaque_Batch-11.pdf"
CHROME="/c/Program Files/Google/Chrome/Application/chrome.exe"
if [[ ! -x "$CHROME" ]]; then
  CHROME="/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe"
fi
"$CHROME" --headless=new --disable-gpu --no-pdf-header-footer \
  --print-to-pdf="$PDF_OUT" "$FILE_URL" && echo "PDF rebuilt."
