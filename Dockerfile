FROM ruby:2.6.3
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
RUN mkdir /test_app2
WORKDIR /test_app2
COPY Gemfile /test_app2/Gemfile
COPY Gemfile.lock /test_app2/Gemfile.lock
RUN bundle install
COPY . /test_app2

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]