# Docker configuration

#### What is done by scripts ?

All of this section

[Scripts doc](scripts.md)

### Make docker commands runable without sudo

Create the docker group:

```bash
sudo groupadd docker
```

Add user to docker group:

```bash
sudo usermod -aG docker $USER
```

Reload group:

```bash
newgrp docker
```

Start docker if it's not already running:

```bash
sudo systemctl start docker
```

Test if it works:

```bash
docker run hello-world
```

## Next doc

Now it's time to check [gestures doc](gestures.md)
