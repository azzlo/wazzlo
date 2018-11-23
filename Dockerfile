FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash - && apt-get install -y nodejs
RUN mkdir /wazzlo
WORKDIR /wazzlo
COPY Gemfile /wazzlo/Gemfile
COPY Gemfile.lock /wazzlo/Gemfile.lock
RUN bundle install
COPY . /wazzlo