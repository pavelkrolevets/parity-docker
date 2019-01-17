FROM parity/parity:nightly

LABEL maintainer="dan@kryha.io"

USER root
WORKDIR /root/parity
ENTRYPOINT ["/bin/parity", "--base-path", "/root/parity"] 

VOLUME [ "/root/parity" ]
