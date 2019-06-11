#!/bin/bash
nohup python3 /dist/opendocs.py &
nohup /dist/filebrowser -r /userdata  -p 9000 &
nginx -g 'daemon off;'