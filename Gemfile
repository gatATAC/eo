source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end


gem 'hobo', '= 2.2.6'
gem 'protected_attributes'
gem 'responders', '2.1.0'
# Hobo has a lot of assets.   Stop cluttering the log in development mode.
gem 'quiet_assets', group: :development
# Hobo's version of will_paginate is required.
gem 'hobo_will_paginate'
gem 'hobo_bootstrap', '2.2.6'
gem 'hobo_jquery_ui', '2.2.6'
gem 'hobo_bootstrap_ui', '2.2.6'
gem 'jquery-ui-themes', '~> 0.0.4'
gem 'hobo_clean_admin', '2.2.6'

=begin
####### Testing ########
gem 'simplecov', :require => false, :group => :test
group :development, :test do
  gem 'email_spec'
  gem 'json_spec'
  gem 'rspec-rails', '~> 2.14.0'                      # unit testing framework
  gem 'factory_girl_rails', '~> 4.2.1'                # factories
  gem 'faker', '~> 1.2.0'                             # data faker
  gem 'capybara', '~> 2.1.0'                          # behaviour testing framework
  gem 'database_cleaner', '~> 1.2.0'                  # database cleaner
  gem 'launchy', '~> 2.3.0'                           # browser launcher
  gem 'selenium-webdriver', '~> 2.35.1'               # front end testing framework
  gem 'shoulda'       
end
=end

####### Project dependent gems

gem 'acts_as_list'

gem 'roo'
gem 'chartkick'
gem 'morrisjs-rails'
gem 'raphael-rails'

gem 'redmine_rest'

######## To dump database
gem 'yaml_db'

group :production do
  gem 'mysql2'
end

