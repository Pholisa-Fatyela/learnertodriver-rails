source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.4'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0'
# Use postgresql as the database for Active Record
gem 'pg'
# Use Phusion Passenger as the app server
gem 'passenger'
# Ruby on Rails stylesheet engine for Sass
# gem 'sassc-rails'
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
# gem 'coffee-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder'
# Use Redis adapter to run Action Cable in production
gem 'redis'
# Use ActiveModel has_secure_password
gem 'bcrypt'

# Use ActiveStorage variant
gem 'image_processing'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

group :development do
  # Better Error Reporting
  # https://github.com/charliesome/better_errors
  gem 'better_errors'
  # Evaluate errors with context
  # https://github.com/banister/binding_of_caller
  gem 'binding_of_caller'
  # Preview mail in the browser instead of sending
  # https://github.com/ryanb/letter_opener
  gem 'letter_opener'
  # 📫 Rails Engine to preview emails in the browser
  # https://github.com/markets/maily
  # gem 'maily'
  # Manage your Ruby On Rails models, relations, and migrations from a simple UI.
  # https://github.com/damln/localtower
  # gem 'localtower'
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'rb-readline'
  gem 'byebug'
  # Official Ruby on Rails specific tasks for Capistrano
  # https://github.com/capistrano/rails
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
end

# #### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ###
# COPY GEM'S BELOW
# #### #### #### #### #### #### #### #### #### #### #### #### #### #### #### ###

# ### ### ### ### ### ### ### ###
# Benchmarking & Monitoring
# ### ### ### ### ### ### ### ###
# https://github.com/skylightio/skylight-ruby
# Skylight agent for Ruby https://www.skylight.io/
gem 'skylight'
# https://github.com/getsentry/raven-ruby
# Raven is a Ruby client for Sentry https://getsentry.com
gem 'sentry-raven'
# https://github.com/schneems/derailed_benchmarks#dynamic-app-benchmarking
# ### ### ### ### ### ### ### ###
# https://github.com/flyerhzm/bullet
# help to kill N+1 queries and unused eager loading
gem 'bullet', group: [:development]
# Bench mark your app
# https://github.com/schneems/derailed_benchmarks
# http://www.schneems.com/2015/05/11/how-ruby-uses-memory.html
gem 'derailed_benchmarks', group: [:development]
# Profiler for your development and production Ruby rack apps.
# https://github.com/MiniProfiler/rack-mini-profiler
# gem 'rack-mini-profiler', group: [:development]
# gem 'flamegraph'
# gem 'fast_stack'    # For Ruby MRI 2.0
# gem 'stackprof'
# Monitor the health and performance of your app
# https://github.com/newrelic/rpm
# Config: config/newrelic.yml
# Usage: Heroku Production
# gem 'newrelic_rpm', groups: [:production]

# ### ### ### ### ### ### ### ###
# Authentication
# ### ### ### ### ### ### ### ###
# Rails authentication with email & password. https://thoughtbot.com/open-source
# https://github.com/thoughtbot/clearance
# gem 'clearance'
# Flexible authentication solution for Rails with Warden.
# https://github.com/plataformatec/devise
gem 'devise'
# Simple (but safe) token authentication for Rails apps or API with Devise.
# https://github.com/gonzalo-bulnes/simple_token_authentication
# gem 'simple_token_authentication'
# https://github.com/omniauth/omniauth
# gem 'omniauth'
# Facebook OmniAuth Strategy https://github.com/mkdynamic/omniauth-facebook
# gem 'omniauth-facebook'
# https://github.com/arunagw/omniauth-twitter
# gem 'omniauth-twitter'
# https://github.com/skorks/omniauth-linkedin
# gem 'omniauth-linkedin'
# https://github.com/intridea/omniauth-github
#gem 'omniauth-github'

# ### ### ### ### ### ### ### ###
# Configuration
# ### ### ### ### ### ### ### ###

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'
# This outputs JSON
# http://www.chrisjmendez.com/2016/07/04/rails-5-api-only-app/
# Config: config/initializers/active_model_serializers.rb
gem 'active_model_serializers'
# Store environmental variables away from git
# https://github.com/bkeepers/dotenv
gem 'dotenv-rails', groups: [:development, :test]
# Server Watcher
# https://github.com/alexch/rerun
gem 'rerun', groups: [:development, :test]
# Pagination
# https://github.com/kaminari/kaminari
gem 'kaminari'
# Persistent HTTP Connections Typhoeus wraps libcurl in order to make fast and reliable requests
gem 'typhoeus'
# Whitelist-based Ruby HTML and CSS sanitizer
# https://github.com/rgrove/sanitize
gem 'sanitize'

# ### ### ### ### ### ### ### ###
# Testing
# ### ### ### ### ### ### ### ###
# https://github.com/rubocop-hq/rubocop
# A Ruby static code analyzer and formatter, based on the community Ruby style guide.
gem 'rubocop', require: false, groups: [:development, :test]
# Populate db/seeds.rb with fake data
# https://github.com/stympy/faker
gem 'faker'
# Relational seeding for Rails apps
# https://github.com/vigetlabs/sprig
# gem 'sprig'
# Programmatic testing using Rspec
# https://github.com/rspec/rspec-rails
gem 'rspec-rails', groups: [:development, :test]
# Automatically run tests through Rspec
# https://github.com/guard/guard-rspec
gem 'guard-rspec', require: false, groups: [:development, :test]
gem 'spring-commands-rspec', groups: [:development, :test]
# Real-time Rspec testing
# https://github.com/guard/guard-livereload
# Config: /Guardfile
# gem 'guard-livereload', require: false, groups: [:development]
# Auto refresh the browser w/o a Chrome plug-in
# https://github.com/johnbintz/rack-livereload
# Config: config/environments/development.rb
gem 'rack-livereload', group: [:development]
# Factory Bot for fixture replatement
# https://github.com/thoughtbot/factory_bot_rails
gem 'factory_bot_rails', groups: [:development, :test]


group :test do
  # Capybara for automated testing (w/o cucumber)
  # https://github.com/teamcapybara/capybara
  gem 'capybara'
  # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver'
  # Run Selenium tests more easily with automatic installation and updates for all supported webdrivers.
  gem 'webdrivers'
end

# ### ### ### ### ### ### ### ###
# Views
# ### ### ### ### ### ### ### ###
gem 'autoprefixer-rails'
# Simplified Forms
# https://github.com/plataformatec/simple_form
gem 'simple_form'
# Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort.
# https://github.com/sinatra/sinatra
gem 'sinatra'
# https://github.com/WilHall/gretel
# Flexible Ruby on Rails breadcrumbs plugin.
gem 'gretel'
# Easily include static pages
# https://github.com/thoughtbot/high_voltage
gem 'high_voltage'
# Font-awesome font bundled as an asset for the rails asset pipeline
# https://github.com/bokmann/font-awesome-rails
gem 'font-awesome-rails'

# Use Webpack to manage app-like JavaScript modules in Rails
# https://github.com/rails/webpacker
gem 'webpacker'

# ### ### ### ### ### ### ### ###
# Logging
# ### ### ### ### ### ### ### ###

# Simple colored logging for Rails apps
# https://github.com/phallguy/shog
gem 'shog', groups: [:development, :test]
# Advanced Logging
# https://github.com/dwbutler/logstash-logger
# gem 'logstasher', groups: [:development, :test]
# Pretty print your Ruby objects with style -- in full color and with proper indentation
# https://github.com/awesome-print/awesome_print
gem 'awesome_print'

# ### ### ### ### ### ### ### ###
# Performance
# ### ### ### ### ### ### ### ###

# Simple, efficient background processing for Ruby.
# https://github.com/mperham/sidekiq/
gem 'sidekiq'
# sidekiq-scheduler is an extension to Sidekiq that pushes jobs in a scheduled way, mimicking cron utility.
# https://github.com/moove-it/sidekiq-scheduler
gem 'sidekiq-scheduler'
# Used with Active Job for asynchronous messaging
# https://github.com/brandonhilkert/sucker_punch
gem 'sucker_punch'
# Memcache for caching pages and fragments
# https://github.com/petergoldstein/dalli
# Usage: Heroku Production
# Config: config/environments/production.rb
gem 'dalli', groups: [:production]
# https://github.com/mattolson/heroku_rails_deflate
# Activate Rack::Deflate and serve up precompiled, gzipped assets on Heroku
# gem 'heroku_rails_deflate', groups: [:production]

# ### ### ### ### ### ### ### ###
# App Specific Gems
# ### ### ### ### ### ### ### ###

# https://github.com/dannnylo/rtesseract
# Ruby library for working with the Tesseract OCR

# https://github.com/activerecord-hackery/ransack
# Object-based searching
gem 'ransack'

gem 'friendly_id'
gem 'acts_as_votable'
gem 'bourbon'
gem 'inky-rb', require: 'inky'
gem 'premailer-rails'
gem 'rails_admin', '~> 2.0', git: 'https://github.com/sferik/rails_admin.git'
