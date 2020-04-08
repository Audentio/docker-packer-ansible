FROM hashicorp/packer:light

RUN apk add --update py-pip build-base python-dev py-boto && rm -rf /var/cache/apk/**/

RUN pip install ansible

RUN mkdir /build
WORKDIR /build
ENV USER root

ENTRYPOINT ["/bin/sh", "-c"]