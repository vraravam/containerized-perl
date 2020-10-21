FROM perl:5.32-slim

# setup a default user so that we are not running as 'root'
ARG UID=997
ARG GID=995
RUN groupadd --gid ${GID} -f dockergrp \
  && adduser --uid ${UID} --gid ${GID} --disabled-password --shell /sbin/nologin --no-create-home docker
USER docker

# setup a working directory where the perl files will live
WORKDIR /usr/src/app

COPY . .

# setup the default running perl program
ENTRYPOINT [ "perl", "./src/file-read.pl" ]

# if no argument is specified while running the docker container, default to this as an argument for the above executable
CMD [ "src/hello-world.pl" ]
