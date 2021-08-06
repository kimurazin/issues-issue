#!/bin/bash

if ["${RAILS_EMV}"="production"]
then
    bundle exec rails asset:precompile
fi

bundle exec rails s -p ${PORT:-3000} -b 0.0.0.0