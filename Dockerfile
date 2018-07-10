FROM ruby:2.5.1
RUN mkdir /lettuce_api
WORKDIR /lettuce_api
ADD Gemfile /lettuce_api/Gemfile
ADD Gemfile.lock /lettuce_api/Gemfile.lock
RUN bundle install
ADD . /lettuce_api