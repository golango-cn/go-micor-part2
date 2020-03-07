module go-micro-part2/src/auth

go 1.14

require (
	github.com/dgrijalva/jwt-go v3.2.0+incompatible
	github.com/go-redis/redis v6.15.7+incompatible
	github.com/golang/protobuf v1.3.2
	github.com/micro/cli/v2 v2.1.2
	github.com/micro/go-micro v1.18.0
	github.com/micro/go-micro/v2 v2.2.0
	github.com/micro/protoc-gen-micro v1.0.0
	go-micro-part2/src/basic v0.0.0-00010101000000-000000000000
)

replace go-micro-part2/src/basic => ../basic
