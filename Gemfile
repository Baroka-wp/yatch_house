source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'rails', '~> 7.0.4'
gem 'pg', '~> 1.1'
gem 'cancan'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'puma', '~> 5.0'
gem 'bcrypt', '~> 3.1.7'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
gem 'bootsnap', require: false
gem 'rack-cors'

group :development, :test do
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem 'active_model_serializers', '~> 0.10.13'
gem 'devise'
gem 'devise-jwt'
gem 'dotenv-rails', groups: %i[development test]
gem 'carrierwave'
gem 'cloudinary'
gem 'rswag'
