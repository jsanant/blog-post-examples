## Overview

The folder contains a full working example for the ingress-gateway blog post.

## Prerequisites

- [Vagrant](https://www.vagrantup.com/)
- [VirtualBox](https://www.virtualbox.org/)

## Getting started

- Clone the repo

```
git clone https://github.com/jsanant/blog-post-examples.git
```

- Run the following commands

```
$ cd blog-post-examples/ingress-gateway
$ vagrant up
```

- This will bring up a single vm with the following applications installed:

  - supervisor
  - Consul
  - consul-template
  - NGINX
  - A small flask app

- Once vagrant command finishes, you will get the following message

```
==> ingress-gateway: Running provisioner: shell...
    ingress-gateway: Running: inline script
    ingress-gateway: IP of the VM is 10.0.0.1
```

- Edit the `/etc/hosts` file and add the private IP of the VM so that the DNS entries will resolve in the browser

```
10.0.0.1 consul.example.com
10.0.0.1 hello.example.com
```

## Further enhancements

### Adding new endpoints

If you want to add more endpoints, edit the flask app `hello_world.py` under `playbooks/roles/provisioning/files/deploy` folder.

Once you are done, run `vagrant provision` so that the new changes are copied over to the VM.

### Adding new DNS entry in consul KV

You can take a look at this demo on how to add a new DNS entry under the `ingress-gateway/hosts` folder.

Don't forget to add the new DNS entry to the `/etc/hosts` file after you have added it to Consul KV!

![img](img/add-dns.gif)

## Clean up

Once you are done, run `vagrant destroy` to remove the VM.