source 'https://rubygems.org'
ruby '2.1.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.3'

group :development do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'quiet_assets'
end

group :production do
  # Use postgres for production
  gem 'pg'
  # Use 12 factor gem for running on heroku
  gem 'rails_12factor'
end

# use new relic for monioring
gem 'newrelic_rpm'

# use rails admin for easy administration
gem 'rails_admin'

# use puma as the app server
gem 'puma'
# Use aasm for the proposal state machine
gem 'aasm'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.0'
gem 'foundation-rails', '~> 5.0.2.0'
gem 'font-awesome-rails', '~> 3.2.1.3'
gem 'simple_form', '~> 3.0.0.rc'

# Use devise for authentication
gem 'devise'

# Use cancan for role based stuff
gem 'cancan', github: 'ncri/cancan', branch: '2.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

group :test do
  gem "rspec-rails", "~> 3.0.0.beta2"
  gem "simplecov"
end

# Use paper_trail for keeping track of changes
gem 'paper_trail', '~> 3.0.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
