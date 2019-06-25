####### Dockerfile #######
FROM rocker/verse:latest
# verse gives all rmarkdown-related stuff including TinyTeX, as well as tidyverse.

MAINTAINER Tom Wallis (twallis@amazon.com)

# ENV SHELL /bin/bash
ENV DEBIAN_FRONTEND=noninteractive

# Install SSH, etc.
RUN apt-get update -qq && apt-get install -yq -qq --no-install-recommends \
    openssh-server \
    screen \
    tmux \
    build-essential \
    libgsl-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN install2.r --error \
    --deps TRUE \
    devtools

RUN install2.r --error \
    --deps TRUE \
    ggthemes \
    gridExtra \
    here \
    psyphy \
    tidybayes

# hardwire RStudio theme
RUN echo "uiPrefs={\"theme\" : \"Solarized Dark\"}" >> \
  /home/rstudio/.rstudio/monitored/user-settings/user-settings

# install brms (run last in case we want version changes):
RUN install2.r --error \
    brms
