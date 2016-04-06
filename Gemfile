source 'https://rubygems.org'

#gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
gem 'sass-rails',   '4.0.3'
gem 'coffee-rails', '4.0.1'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
 gem 'therubyracer', '0.11.4', platforms: :ruby
gem 'uglifier', '~> 2.1.2'
# Gems used only for assets and not required
# in production environments by default.
#gem 'zurb-foundation'
#bootsrap
gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
gem "twitter-bootstrap-rails"
gem 'simple_form'

gem 'jquery-rails'
gem 'puma'
gem "devise", '~> 3.4.1'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 1.5.0'

#For admin interface
gem 'activeadmin', '~> 1.0.0.pre1'

group :development, :test do
  #gem 'debugger'
  gem "capybara"
  gem "factory_girl_rails"
  gem "rspec-rails", "2.99.0"
  gem "guard-rspec"
  gem 'rspec-its'
  gem 'rspec-activemodel-mocks'
  gem 'spring' # keep application running in the background
  gem 'spring-commands-rspec'
end

group :development do
  gem 'yard'
  gem 'web-console' 
  gem 'brakeman', require: false
  gem 'rubocop', require: false
end

group :test do
  gem 'simplecov', require: false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', group: :development
