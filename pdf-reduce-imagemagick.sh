#!/bin/sh


FILE="$1"

if [ -z "${FILE}" ]; then 
    echo "Prerequisite: sudo apt install imagemagick"
    echo "sudo cat /etc/ImageMagick-6/policy.xml | grep -i pdf"
    echo '<policy domain="coder" rights="read|write" pattern="PDF" />'
    echo "Usage $0 file.pdf "
else
    convert -density 200x200 -quality 60 -compress jpeg ${FILE} ${FILE%%.pdf}_reduced.pdf 
fi
