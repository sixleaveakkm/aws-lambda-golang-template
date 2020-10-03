.PHONY: build zip clean

build:
	export GO111MODULE=on
	@bash scripts/build_lambda.sh

zip:
	@bash scripts/zip_lambda.sh

clean:
	rm -r ./bin/*
