FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rails_with_docker
WORKDIR /rails_with_docker

COPY Gemfile /rails_with_docker/Gemfile
COPY Gemfile.lock /rails_with_docker/Gemfile.lock

RUN bundle install
COPY . /rails_with_docker
