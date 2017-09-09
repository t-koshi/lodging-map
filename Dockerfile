FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y libpq-dev libqt4-dev libqtwebkit-dev graphviz
RUN mkdir /lodging-map
WORKDIR /lodging-map
ADD Gemfile /lodging-map/Gemfile
ADD Gemfile.lock /lodging-map/Gemfile.lock
RUN bundle install

ADD Gemfile* lodging-map/

ENV BUNDLE_GEMFILE=lodging-map/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

ADD . /lodging-map

