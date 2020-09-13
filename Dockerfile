FROM ruby:2.5
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs \
    postgresql-client \
    yarn
WORKDIR /animals-dona
COPY Gemfile Gemfile.lock /animals-dona/
RUN bundle install
