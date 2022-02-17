build:
	mkdir -p functions
	cd cmd/phoneserver && go build -ldflags "-X main.Version=`git describe --tags`" -o ../../functions/phoneserver .

buildmetadata:
	go build -o ./buildmetadata ./cmd/buildmetadata/main.go
	buildmetadata