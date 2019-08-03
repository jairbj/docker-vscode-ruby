FROM ruby:2.6.3-stretch

LABEL maintainer="jairbj"

ENV WORKDIR /usr/src/app

WORKDIR $WORKDIR
EXPOSE 3000

RUN cd ~

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
               git  \
               libmariadb-dev \
               libpq-dev \
               libsqlite3-dev \
               nodejs \
               yarn \
               ruby-tzinfo \
               imagemagick \
               ruby-dev

RUN unset GEM_HOME \
    && gem install \
            rubocop \
            ruby-debug-ide \
            debase
