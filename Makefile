.PHONY: build

default: build

build:
	docker build -t ingy/swim .

update: doc

doc: ReadMe.pod

ReadMe.pod: swim.swim
	docker run -i --entrypoint=/usr/local/bin/swim ingy/swim --to=pod --complete < $< > $@
