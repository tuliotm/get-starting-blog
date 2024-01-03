FROM ruby:3.2.1

RUN apt-get update -qq && \
    apt-get install -y nodejs postgresql-client redis-tools

WORKDIR /getting_started_blog
COPY Gemfile /getting_started_blog/Gemfile
COPY Gemfile.lock /getting_started_blog/Gemfile.lock
RUN bundle install

COPY config/sidekiq.yml /getting_started_blog/config/sidekiq.yml

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]