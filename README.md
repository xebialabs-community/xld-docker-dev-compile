# xld_dev_compile #

Docker image that has XLD installed, mounts your source code and executes compilation using gradle wrapper.

# Starting #

```
docker run -v ~/myproject:/data -v ~/.xlgradle:/root/.gradle xebialabs/xld_dev_compile
```

where:

* `data`: Mountpoint pointing to root directory of your plugin.
* `xlgradle`: Is used to cache gradle dependencies.
