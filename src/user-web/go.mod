module go-micro-part2/src/user-web

go 1.14

replace go-micro-part2/src/basic => ../basic

replace go-micro-part2/src/user-srv => ../user-srv

replace go-micro-part2/src/auth => ../auth

require (
	github.com/micro/cli/v2 v2.1.2
	github.com/micro/go-micro/v2 v2.2.0
	go-micro-part2/src/auth v0.0.0-00010101000000-000000000000
	go-micro-part2/src/basic v0.0.0-00010101000000-000000000000
	go-micro-part2/src/user-srv v0.0.0-00010101000000-000000000000
)
