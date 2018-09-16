gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer \
    -dNOPAUSE -dQUIET -dBATCH -dDetectDuplicateImages \
    -dCompressFonts=true -r150 -sOutputFile=main.compressed.pdf main.pdf
