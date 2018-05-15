# WhatsMyIP
Get the WAN && LAN IP address in golang

## 用途

提供服务，使用者可以获取自己的外网IP或局域网IP

## 编译

```bash
./build.sh
```

## 使用

**开启whatsmyip服务器**

```bash
./whatsmyip --port=3000
```

**获取自己IP**

```bash
curl http://ip:3000
```

ip为whatsmyip所在服务器的外网IP或局域网IP。

相应的，返回自己的外网IP或局域网IP

## docker

```bash
docker pull fananchong/whatsmyip
```

```bash
docker run -d --restart=always -p 3000:3000 fananchong/whatsmyip
```

## docker swarm

```bash
cd docker-swarm
./install.sh
```
