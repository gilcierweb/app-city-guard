#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
#yarn build_admin
bundle exec rails assets:precompile
bundle exec rails assets:clean
bundle exec rails db:migrate