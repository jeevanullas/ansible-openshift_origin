#!/bin/bash

# Remove Gemfile.lock and bundle install on the local machine,
# then recompile the rails assets
pushd /var/www/openshift/broker/
  rm -f Gemfile.lock
  bundle install
  rm -fr tmp/cache/*
popd
