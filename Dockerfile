FROM ruby:2.7-slim
LABEL maintainer "Oskar Szrajer <github@gotar.info>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

# hadolint ignore=DL3009
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
    curl \
    gnupg2

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -\
  && apt-get update -qq && apt-get install -qq --no-install-recommends \
    pkg-config libxml2-dev libxslt-dev git libpq-dev openssh-client \
    build-essential shared-mime-info nodejs \
  && apt-get upgrade -qq \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*\
  && npm install -g yarn@1
