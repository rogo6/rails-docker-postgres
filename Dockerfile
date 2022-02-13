FROM ruby:3.0.2

RUN apt-get update && apt-get install -y \
build-essential \
nodejs \
imagemagick \
cron \
optipng \
libjpeg-progs \
ffmpeg

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install yarn

RUN apt-get -y remove exim4 exim4-base exim4-config exim4-daemon-light

WORKDIR /challenge_app

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

ENV BUNDLE_PATH=/bundle \
   BUNDLE_BIN=/bundle/bin \
   GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"