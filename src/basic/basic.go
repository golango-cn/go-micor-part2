package basic

import (
	"go-micro-part2/src/basic/config"
	"go-micro-part2/src/basic/db"
	"go-micro-part2/src/basic/redis"
)

func Init() {
	config.Init()
	db.Init()
	redis.Init()
}
