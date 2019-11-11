#!/bin/sh

bundle exec rake db:schema:load
bundle exec rake db:seed
# bundle exec rake app:load_demo_data
