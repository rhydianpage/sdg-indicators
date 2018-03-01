FROM ruby:2.4-stretch

ENV LANG C.UTF-8

RUN apt-get update -q \
  && apt-get install -y \
    dos2unix \
    python3 \
    python3-yaml \
    python3-setuptools \
    python3-pandas \
    python3-pandas-lib

ADD Gemfile /tmp/
WORKDIR /tmp/
RUN bundle install

EXPOSE 4000

