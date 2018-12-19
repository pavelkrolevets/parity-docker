# parity-docker

This is an update to the `parity/parity:stable` that allows it to run in docker-compose and Kubernetes environments because the binary is executed as root within the container.

The `--base-path` has been updated to point to `/root/parity` and command line argumensts are supported. This allows for easy volume mounting on the host.

Our Docker Hub repository is linked to the `parity/parity:stable` one. As a result, our image gets autobuilt once `parity:stable` is updated.

Docker-compose example:
```
  parity:
    image: kryha/parity:latest
    volumes:
      - ./parity/:/root/parity/
    command:
      - --chain=tobalaba
      - --jsonrpc-apis=all
      - --jsonrpc-interface=all
      - --jsonrpc-cors=all
      - --ws-port=8546
      - --ws-interface=all
      - --ws-origins=all
      - --ws-hosts=all
```
