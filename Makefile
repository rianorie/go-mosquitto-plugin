plugin := $(wildcard *.go) interface.c
plugins/test/auth.so: $(plugin) plugins/test/plugin.go
	@go build -buildmode=c-shared -o test/auth.so github.com/rianorie/go-mosquitto-plugin/plugins/test 

.PHONY: test

test: plugins/test/auth.so
	@mosquitto -c ./test/mqtt.cfg


