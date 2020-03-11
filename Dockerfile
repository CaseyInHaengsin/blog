FROM ruby:2.6.3 

RUN mkdir -p /usr/src/app

ADD Gemfile /usr/src/app/
ADD Gemfile.lock /usr/src/app/
WORKDIR /usr/src/app
RUN gem install bundler -v 2.1.4
RUN bundle install
ADD . /usr/src/app/
ENTRYPOINT ["bin/rails"]