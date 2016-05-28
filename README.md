# Docker Machine in docker

[![](https://imagelayers.io/badge/leanlabs/docker-machine:latest.svg)](https://imagelayers.io/?images=leanlabs/docker-machine:latest 'Get your own badge on imagelayers.io')

### Usage

```bash
docker run \
    -e COMMAND=create \
    -e DRIVER=digitalocean \
    -e VMNAME=myvm \
    -e DIGITALOCEAN_ACCESS_TOKEN=your_token_here \
    leanlabs/docker-machine
```

This command will create "myvm" virtual machine on digitalocean.

To pass additional parameters to docker-machine command just pass an appropriate environment variable, 
e.g. if you want pass --digitalocean-access-token you can do it via -e DIGITALOCEAN_ACCESS_TOKEN=your_token_here.

### Envrironment variables

**COMMAND** - for passing actual docker-machine command to execute, there are just few of them supported for now

**VMNAME**  - the name of virtual machine to act on, e.g. create the machine with this name

**DRIVER**  - the name of the provider to act on, e.g. "digitalocean"

If you need to specify additional command flags please refer to appropriate docker-machine documentation section, most of cli flags are duplicated by environment variables, so you can pass any values you need.

### Supported commands

Commands are named by their docker-machine names:

**create** - for executing docker-machine create

**env** - for executing docker-machine env

**rm** for executing docker-machine rm
