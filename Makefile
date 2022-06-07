default: build

build:
	@go build -o ./bin/pgtool ./cmd/*.go

run: build
	@./bin/pgtool

test:
	@go test ${PKG} -cover -timeout 5m ${ARGS}
