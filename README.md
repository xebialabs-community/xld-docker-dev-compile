# xld_dev_compile #

Docker image that has XLD installed, mounts your source code and executes compilation using gradle wrapper.

## Badges ##
[![Docker Stars](https://img.shields.io/docker/stars/xebialabsunsupported/xld_dev_compile.svg)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/xebialaxebialabsunsupportedbs/xld_dev_compile.svg)]()
[![Build Status][xld-docker-dev-compile-travis-image] ][xld-docker-dev-compile-travis-url]

[xld-docker-dev-compile-travis-image]: https://travis-ci.org/xebialabs-community/xld-docker-dev-compile.svg?branch=master
[xld-docker-dev-compile-travis-url]: https://travis-ci.org/xebialabs-community/xld-docker-dev-compile


## Tags ##

+ `latest`, `8.1.0`
+ `v8.0.0.1`
+ `v7.6.0.1`
+ `v7.5.0.1`
+ `v7.2.0.1`
+ `v7.1.0.3`
+ `v7.1.0.2`
+ `v7.1.0.1`
+ `v7.0.0.2`

## Starting ##

```
docker run -v ~/myproject:/data -v ~/.xlgradle:/root/.gradle xebialabsunsupported/xld_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
