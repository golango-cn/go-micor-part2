module go-micro-part2/src/user-srv

go 1.14

replace go-micro-part2/src/basic => ../basic

require (
	github.com/go-sql-driver/mysql v1.5.0
	github.com/golang/protobuf v1.3.4
	github.com/micro/cli/v2 v2.1.2
	github.com/micro/go-micro/v2 v2.2.0
	go-micro-part2/src/basic v0.0.0-00010101000000-000000000000
)
