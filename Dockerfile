####### Dockerfile #######
FROM rocker/verse:3.6.0
# verse gives all rmarkdown-related stuff including TinyTeX, as well as tidyverse.

MAINTAINER Tom Wallis (tsawallis@gmail.com)

# ENV SHELL /bin/bash
# ENV DEBIAN_FRONTEND=noninteractive

##RUN install2.r --error \
#    --deps TRUE \
#    devtools
#
#RUN install2.r --error \
#    --deps TRUE \
#    ggthemes \
#    gridExtra \
#    here \
#    psyphy \
#    tidybayes
#
## hardwire RStudio theme
## RUN echo "uiPrefs={\"theme\" : \"Solarized Dark\"}" >> \
##  /home/rstudio/.rstudio/monitored/user-settings/user-settings
#
## install brms (run last in case we want version changes):
#RUN install2.r --error \
#    --deps TRUE \
#    brms
#
