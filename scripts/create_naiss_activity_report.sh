#!/bin/bash
#
# Creates a NAISS activity report
#
# Usage:
#
#   ./scripts/create_naiss_acticity_report.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_naiss_acticity_report.sh"
    echo " "
    exit 42
fi

md_filenames=$(find . | grep -E "evaluations.*2025.*README.md")

for md_filename in ${md_filenames}
do
 echo ${md_filename}
 pdf_filename=$(basename "${md_filename%.md}.pdf")
 echo ${pdf_filename} 
 # pandoc --toc "${md_filename}" -o  pdf_filename
done


