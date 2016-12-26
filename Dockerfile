FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /app
RUN useradd -m docker
RUN chown -R docker:docker /app
USER docker
ENV BUNDLE_PATH /app/vendor/bundle
RUN bundle config --global path /app/vendor/bundle
WORKDIR /app
#ADD Gemfile /app/Gemfile
#ADD Gemfile.lock /app/Gemfile.lock
#RUN bundle install --path="vendor/bundle"
#ADD . /app

