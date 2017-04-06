all: build

build:
	@docker build --tag=vovkasm/openfire .

release: build
	@docker build --tag=vovkasm/openfire:$(shell cat VERSION) .
