# For installing docker muse converter
FROM debian:buster
RUN apt update && apt --no-install-recommends install ca-certificates wget gnupg2 -y && wget -O - https://packages.amusewiki.org/amusewiki.gpg.key | apt-key add - && echo 'deb http://packages.amusewiki.org/debian buster main' > /etc/apt/sources.list.d/amusewiki.list && apt update && apt install libtext-amuse-perl libtext-amuse-preprocessor-perl libtext-amuse-compile-perl -y && rm -rf /var/lib/apt/lists/*
