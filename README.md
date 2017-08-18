# xld_dev_compile #

Docker image that has XLD installed, mounts your source code and executes compilation using gradle wrapper.

## Badges ##
[![Docker Stars](https://img.shields.io/docker/stars/xebialabs/xld_dev_compile.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/xebialabs/xld_dev_compile.svg)]()
[![Docker Automated buil](https://img.shields.io/docker/automated/xebialabs/xld_dev_compile.svg)]()
[![Docker Build Statu](https://img.shields.io/docker/build/xebialabs/xld_dev_compile.svg)]()


## Supported tags ##

* `latest`, `7.1.0.1`
* `v7.0.0.2`
* `v6.2.1.1`
* `v6.2.0.1`
* `v6.0.2.1`
* `v6.0.1.1`
* `v6.0.0.1`
* `v5.5.5.6`
* `5.5.3.1`
* `5.5.1.1`

## Starting ##

```
docker run -v ~/myproject:/data -v ~/.xlgradle:/root/.gradle xebialabs/xld_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
