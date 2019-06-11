# opendocs.live
opendocs main repo


## Set env variables for docker:
docker run -ti -p 8003:80 \
-e FILEBROWSERURL='http://localhost:9000' \
-e FILEBROWSERROOT='/userfolders' \
-e FILEBROWSERKEY='pUeV6GPvb4hq9O721TiIEKjAn4uv2cwDXAKEUrP51pHkA3jHQJgxfZeEMsDUrx+6AFS7sNGRjbvBNovlfcvNQg==' \
-e HOST='http://localhost:8003' \
-e LOGINHOST='https://login.threefold.me' \
opendocs