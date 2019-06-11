all:

fb:
	cd filebrowser && cd frontend && npm install && npm run build && cd .. && cd http && rice embed-go && cd .. && go build

dist:
	mkdir dist && cp filebrowser/filebrowser dist && cp opendocs_api/opendocs.py dist

docker:
	docker build -t opendocs .

clean:
	rm -rf dist