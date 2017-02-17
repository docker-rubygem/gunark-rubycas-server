FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.8.0.20090812

RUN gem install gunark-rubycas-server --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["rubycas-server"]
CMD ["--help"]
