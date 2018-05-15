# WhatsMyIP
Get the WAN && LAN IP address in golang

## 用途

提供服务，使用者可以获取自己的外网IP或局域网IP

## 编译

```bash
./build.sh
```

## 使用

```bash
./whatsmyip --port=3000
```

## docker

```bash
docker pull fananchong/whatsmyip
```

```bash
docker run -it -p 3000:3000 fananchong/whatsmyip
```
