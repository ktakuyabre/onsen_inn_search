#onsen_inn_search


##Docker

Download Docker on your Mac or Windows <br />
Mac : https://hub.docker.com/editions/community/docker-ce-desktop-mac <br />
Windows : https://hub.docker.com/editions/community/docker-ce-desktop-windows (Windows)

Open Docker.


##Setup

```
$ docker-compose up
```


When you shut down jaran\_api

```
$ docker-compose down
```


#Development

When you want to work on the docker container

```
$ docker exec -it <container id of the onsen_inn_search_web> bash
```

or 

```
$ docker exec -it $(docker ps | grep onsen_inn_search_web | awk {'print $1'}) bash
```

When you run a command on the docker container

```
$ docker exec -i <container id of the onsen_inn_search_web> <command>
```

or

```
$ docker exec -i $(docker ps | grep onsen_inn_search_web | awk {'print $1'}) <command>
```