FROM ruby:2.0-onbuild
MAINTAINER Eugen Rochko <eugen@zeonfederated.com>

ADD . /var/app
WORKDIR /var/app

RUN ["gem", "install", "bundler"]
RUN ["bundle", "install"]

EXPOSE 8080

CMD ["bundle", "exec", "unicorn", "-c", "/var/app/unicorn.rb", "-p", "8080"]
