FROM vladus2000/alpine-base-glibc
MAINTAINER vladus2000 <docker@matt.land>

ENV STARTUP_CMD="sleep 1h"

COPY shiz/ /

RUN \
	adduser -s /bin/ash -D user && \
	apk add --no-cache shadow su-exec && \
	ln -s /.bashrc ~user/.bash_profile && \
	chmod +x /*.sh && \
	sleep 1 && \
	/update.sh

CMD /bin/ash -c /startup.sh

