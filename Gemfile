# 2011-12-10 ������� gem 'therubyracer'.  ������� gem 'therubyracer-heroku' � group :production ��� ����������� �� ��������������� libv8 �� Win
# therubyracer gem on windows http://stackoverflow.com/questions/6356450/therubyracer-gem-on-windows

source 'http://rubygems.org'

gem 'rails', '3.1.2'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'



# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5.rc.2'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'


gem 'execjs'
#gem 'therubyracer'

group :development, :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
  gem 'sqlite3-ruby', '1.3.0', :require => 'sqlite3'
  gem 'sqlite3'
  gem 'rspec-rails', '2.6.1'
  gem 'annotate', '2.4.0'
end

group :production, :staging do
<<<<<<< HEAD
  gem 'therubyracer'
=======
#  gem 'therubyracer'
#  gem 'therubyracer-heroku', '0.8.1.pre3'
>>>>>>> 023b9d513387469f97c006698aff91228ef25e16
  gem 'pg'
end

gem 'taps'

#gem 'thin'

gem 'paperclip'
gem 'aws-s3', :require => 'aws/s3'
#gem 'right_aws'

gem 'pony'