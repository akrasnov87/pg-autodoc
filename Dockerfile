FROM ubuntu:24.04

RUN apt update && apt upgrade -y
ARG DEBIAN_FRONTEND=noninteractive TZ=UTC

RUN apt install git libdbi-perl libhtml-template-perl libterm-readkey-perl libdbd-pg-perl make -y
RUN git clone https://github.com/cbbrowne/autodoc.git autodoc

RUN cd autodoc && make install
COPY generate.sh /autodoc/generate.sh

RUN mkdir -p /opt/autodoc

RUN chmod -R 777 /autodoc
RUN chmod -R 777 /opt/autodoc

VOLUME ["/opt/autodoc"]

ENTRYPOINT [ "/usr/bin/sh" ]

CMD ["/autodoc/generate.sh"]