
### 源项目
https://github.com/micro-in-cn/tutorials/tree/master/microservice-in-micro

### SQL表

```sql
CREATE TABLE `_user` (
	`user_id` int ( 11 ) NOT NULL AUTO_INCREMENT,
	`user_name` varchar ( 255 ) NOT NULL,
	`user_pwd` varchar ( 255 ) NOT NULL,
	`created_time` int ( 11 ) DEFAULT NULL,
	`updated_time` int ( 11 ) DEFAULT NULL,
	PRIMARY KEY ( `user_id` ),
UNIQUE KEY `uk_user_name` ( `user_name` ( 191 ) ) USING BTREE 
) ENGINE = InnoDB AUTO_INCREMENT = 10002 DEFAULT CHARSET = utf8mb4;
```


### 运行api
```
$ micro --registry=etcd --api_namespace=mu.micro.book.web  api --handler=web
```

### 运行user-srv
```
$ cd user-srv
$ go run main.go plugin.go 
```

### 运行user-web
```
$ cd user-web
$ go run main.go
```

### 运行auth
```
$ cd auth
$ go run main.go
```

### 请求登录
```
$ curl --request POST   --url http://127.0.0.1:8080/user/login   --header 'Content-Type: application/x-www-form-urlencoded'  --data 'userName=micro&pwd=1234'
```

### 返回结果
```
{
    "data": {
        "id": 10001,
        "name": "micro"
    },
    "ref": 1555428438879936000,
    "success": false,
    "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTgwMjA0MzgsImp0aSI6IjEwMDAxIiwiaWF0IjoxNTU1NDI4NDM4LCJpc3MiOiJib29rLm1pY3JvLm11IiwibmJmIjoxNTU1NDI4NDM4LCJzdWIiOiIxMDAwMSJ9._OCu2umIFuFmNwn-sSHoXBrjyBovhgcPQweOTOlZqq8"
}
```

### 退出登录（需要将token换成实际的）

```
$ curl --request POST \
  --url http://127.0.0.1:8080/user/logout \
  --cookie 'remember-me-token=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTgwMjA0MzgsImp0aSI6IjEwMDAxIiwiaWF0IjoxNTU1NDI4NDM4LCJpc3MiOiJib29rLm1pY3JvLm11IiwibmJmIjoxNTU1NDI4NDM4LCJzdWIiOiIxMDAwMSJ9._OCu2umIFuFmNwn-sSHoXBrjyBovhgcPQweOTOlZqq8'
```