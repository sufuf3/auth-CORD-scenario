# vRadius
[![Docker Build Status](https://img.shields.io/docker/build/jrottenberg/ffmpeg.svg)](https://hub.docker.com/r/sufuf3/freeradius/)

- Using FreeRadius docker
- Authentication-as-a-Service part


## How it work
- Run docker
```sh
$ docker run -itd --name freeradius1 -p 1812:1812/udp -p 1813:1813/udp sufuf3/freeradius:v0.1.5
9eda8ab1c868ab27eb00add148957411b20670980c070859e0157387855dda0e
```

- enter to the docker & radtest it
```sh
$ docker exec -it freeradius1 bash

root@9eda8ab1c868:/# radtest cordpod mycord localhost 0 testing123
Sending Access-Request of id 169 to 127.0.0.1 port 1812
        User-Name = "cordpod"
        User-Password = "mycord"
        NAS-IP-Address = 172.17.0.2
        NAS-Port = 0
        Message-Authenticator = 0x00000000000000000000000000000000
rad_recv: Access-Accept packet from host 127.0.0.1 port 1812, id=169, length=36
        Reply-Message = "Hello, cordpod"
```

- Run radtest in host
```sh
$ radtest cordpod mycord 172.17.0.2 1812 mycord
Sending Access-Request of id 199 to 172.17.0.2 port 1812
        User-Name = "cordpod"
        User-Password = "mycord"
        NAS-IP-Address = 127.0.1.1
        NAS-Port = 1812
        Message-Authenticator = 0x00000000000000000000000000000000
rad_recv: Access-Accept packet from host 172.17.0.2 port 1812, id=199, length=36
        Reply-Message = "Hello, cordpod"
```

## Ref
- https://wiki.freeradius.org/Home
- https://kyle.ai/blog/6241.html
- https://github.com/tpdock/freeradius
- https://github.com/catatnight/docker-freeradius
- http://benhuang83-xxfx.blogspot.com/2016/11/ubuntufreeradius.html
