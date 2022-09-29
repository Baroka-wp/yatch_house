source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'active_model_serializers', '~> 0.10.13'
gem 'activestorage'
gem 'bcrypt', '~> 3.1.7'
gem 'bootsnap', require: false
gem 'cancan'
gem 'carrierwave'
gem 'cloudinary'
gem 'devise'
gem 'devise-jwt'
gem 'dotenv-rails', groups: %i[development test]
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rack-cors'
gem 'rails', '~> 7.0.4'
gem 'rails_12factor', group: :production
gem 'rake', '~> 13.0'
gem 'rspec'
gem 'rswag'
gem 'rubocop', '>= 1.0', '< 2.0'
gem 'sprockets'
gem 'sprockets-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-json_expectations', '~> 1.2'
  gem 'rspec-rails'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end
