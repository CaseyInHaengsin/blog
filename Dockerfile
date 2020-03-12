FROM ruby:2.6.3 

RUN mkdir -p /app

ADD Gemfile /app
ADD Gemfile.lock /app
WORKDIR /app
RUN gem install bundler -v 2.1.4
RUN bundle install
ADD . /app/
ENTRYPOINT ["bin/rails"]