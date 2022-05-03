#!/bin/sh

if [ "${RAILS_ENV}" = "production" ]; then
    bin/webpack
fi

bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0