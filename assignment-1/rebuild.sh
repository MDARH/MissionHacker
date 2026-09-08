#!/usr/bin/env bash
# Edit assignment.html, then run ./rebuild.sh to regenerate the PDF.
cd "$(dirname "$0")"
weasyprint assignment.html "Assignment-01_Md-Abdur-Razzaque_Batch-11.pdf" && echo "PDF rebuilt."
