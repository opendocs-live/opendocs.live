#!/bin/bash
echo "#### STARTING OPENDOCS SERVER #####"
python3 /dist/opendocs.py &
/dist/filebrowser -r $FILEBROWSERROOT  -p 9000 &
nginx -g 'daemon off;'
