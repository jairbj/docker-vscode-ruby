FROM ruby:2.6.3

LABEL maintainer="jairbj"

ENV WORKDIR /usr/src/app

WORKDIR $WORKDIR
EXPOSE 3000

RUN cd ~

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
    && apt-get update -y \
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
