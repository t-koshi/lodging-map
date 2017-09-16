FROM ruby:2.3.4
RUN apt-get update -qq && apt-get install -y libpq-dev libqt4-dev libqtwebkit-dev graphviz

RUN mkdir /lodging-map
WORKDIR /lodging-map
ADD Gemfile /lodging-map/Gemfile
ADD Gemfile.lock /lodging-map/Gemfile.lock
RUN bundle install

ADD . /lodging-map

