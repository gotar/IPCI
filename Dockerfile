FROM ruby:3.2.2
LABEL maintainer "Oskar Szrajer <github@gotar.info>"

ARG REFRESHED_AT
ENV REFRESHED_AT $REFRESHED_AT

# hadolint ignore=DL3009
RUN apt-get update -qq && apt-get install -qq --no-install-recommends \
    curl \
    gnupg2

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN apt-get update && apt-get install -y wget --no-install-recommends \
  && apt-get install -qq --no-install-recommends \
    pkg-config libxml2-dev libxslt-dev git libpq-dev openssh-client \
    build-essential shared-mime-info
