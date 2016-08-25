rpi-inadyn-build
---

Container for building [inadyn](https://github.com/troglobit/inadyn) for a raspberry pi.

Once inadyn is compiled you can copy out the compiled binary from /inadyn-${INADYN_VERSION}/src/inadyn

```
docker cp /inadyn-${INADYN_VERSION}/src/inadyn .
```

Then use the binary in a new container.

You can use a pre-compiled binary/container in [rothgar/rpi-inadyn:1.99.15](https://hub.docker.com/r/rothgar/rpi-inadyn/)
