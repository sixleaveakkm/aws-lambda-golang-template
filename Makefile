.PHONY: build clean

build:
	export GO111MODULE=on
	bash build_lambda.sh


clean:
	rm -r ./bin/*
