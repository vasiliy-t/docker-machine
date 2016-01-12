# Docker machine builder

### Usage

```bash
docker run -e OPERATION=create -e DRIVER=digitalocean -e VMNAME=myvm -e DIGITALOCEAN_ACCESS_TOKEN=your_token_here leanlabs/docker-machine-builder
```

This command will create "myvm" virtual machine on digitalocean.

To pass additional parameters to docker-machine command just pass an appropriate environment variable, 
e.g. if you want pass --digitalocean-access-token you can do it via -e DIGITALOCEAN_ACCESS_TOKEN=your_token_here.
