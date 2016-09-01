FROM ubuntu:16.04

RUN echo 'apt-get update && apt-get install --no-install-recommends -y "$1"' > /usr/local/bin/pkg-deb
RUN echo 'gem install --no-ri --no-rdoc "$1"' > /usr/local/bin/pkg-gem
RUN chmod +x /usr/local/bin/pkg-*

RUN pkg-deb ca-certificates
RUN update-ca-certificates

RUN pkg-deb ruby2.3
RUN pkg-deb ruby2.3-dev
RUN pkg-deb libffi-dev=3.2.1-4
RUN pkg-deb build-essential=12.1ubuntu2

RUN pkg-deb wget
RUN pkg-deb libfontconfig
RUN wget 'https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2'
RUN tar xfj phantomjs-2.1.1-linux-x86_64.tar.bz2
RUN mv phantomjs-2.1.1-linux-x86_64/bin/phantomjs /usr/local/bin/phantomjs

RUN pkg-gem bundler:1.12.5
RUN pkg-gem ffi:1.9.14
RUN pkg-gem json:2.0.2

RUN mkdir /app/
WORKDIR /app/
COPY Gemfile* /app/
RUN bundle
