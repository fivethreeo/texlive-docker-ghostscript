FROM registry.gitlab.com/islandoftex/images/texlive:latest

RUN apt-get update && \
  apt install -y ghostscript && \
  apt-get autoremove -qy --purge && \
  rm -rf /var/lib/apt/lists/* && \
  apt-get clean && \
  rm -rf /var/cache/apt/

