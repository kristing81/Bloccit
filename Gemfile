source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.5'

# Use sqlite3 as the database for Active Record
 group :production do
   gem 'pg'
   gem 'rails_12factor'
   gem 'unicorn'
 end
 
 group :development do
   gem 'sqlite3'
 end

# Use SCSS for stylesheets
gem 'sass-rails', '~> 4.0.2'
gem 'bootstrap-sass', '~> 3.1.1'

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

gem 'faker'

gem 'devise'

gem 'figaro'

gem 'pundit'

gem 'redcarpet'

gem 'carrierwave'

gem 'mini_magick'

gem 'fog'

gem 'simple_form', github: 'plataformatec/simple_form'

gem 'will_paginate', '~> 3.0.5'

gem 'newrelic_rpm'

group :development do
  gem "better_errors"
  gem "binding_of_caller"
  gem 'thin'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'factory_girl_rails'
  gem 'launchy'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]
