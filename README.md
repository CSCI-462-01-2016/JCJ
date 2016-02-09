# Vagrantfile for Oppia
Install `Virtualbox` and `vagrant`, checkout this repository, then run:

```
$ vagrant plugin install vagrant-triggers
$ vagrant box add ubuntu/trusty64
$ vagrant up
```

When it is done installing, navigate to `127.0.0.1:8181` on your host machine to interact with Oppia.

Note: Running `vagrant destroy` will clean the project directory of all Oppia files.


