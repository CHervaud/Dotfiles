# Docker configuration

#### What is done by scripts ?
All of this section

[Scripts doc](doc/scripts.md)

### Make docker commands runable without sudo

Create the docker group:
```
sudo groupadd docker
```

Add user to docker group:
```
sudo usermod -aG docker $USER
```

Reload group:
```
newgrp docker
```

Start docker if it's not already running:
```
sudo systemctl start docker
```

Test if it works:
```
docker run hello-world
```

## Next doc

Now it's time to check [gestures doc](doc/gestures.md)
