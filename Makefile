all:

fb:
	cd filebrowser && cd frontend && npm install && npm run build && cd .. && cd http && rice embed-go && cd .. && go build

fbfast:
	cd filebrowser && cd frontend && npm run build && cd .. && cd http && rice embed-go && cd .. && go build
dist:
	mkdir dist && cp filebrowser/filebrowser dist && cp opendocs_api/opendocs.py dist && cp opendocs_api/docs.html dist

docker:
	docker-compose build

clean:
	rm -rf dist