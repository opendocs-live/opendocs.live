FROM ubuntu:18.04

RUN apt-get update -y && apt-get install -y npm wget python3 python3-pip nginx nano && apt-get install --fix-missing -y
RUN pip3 install pynacl flask requests pyjwt

ENV FILEBROWSERURL $FILEBROWSERURL
ENV FILEBROWSERROOT $FILEBROWSERROOT
ENV FILEBROWSERKEY $FILEBROWSERKEY
ENV LOGINHOST $LOGINHOST
ENV HOST $HOST

COPY dist /dist

COPY sys/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY sys/nginx.conf /etc/nginx/nginx.conf
RUN mkdir /userfolders
#ENTRYPOINT [ '/entrypoint.sh'  ]
#CMD [ "tail", "-f", "/dev/null"]
#CMD ["nginx", "-g", "daemon off;"]