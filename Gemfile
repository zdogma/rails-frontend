# frozen_string_literal: true

source 'https://rubygems.org'

# NOTE: git プロトコルではなく HTTPS で通信するためのコード
# Bundle >~ 2.0 で下記を書かなくても良くなる
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'coffee-rails', '~> 4.2'
gem 'dotenv-rails'
gem 'jbuilder', '~> 2.5'
gem 'jpmobile'
gem 'jquery-rails'
gem 'mysql2'
gem 'puma', '~> 3.0'
gem 'rails'
gem 'sass-rails', '~> 5.0'
gem 'settingslogic'
gem 'slim-rails'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'brakeman', require: false
  gem 'byebug', platform: :mri
  gem 'faker', github: 'stympy/faker'
  gem 'gimei'
  gem 'rubocop', require: false
  gem 'rubocop-junit-formatter'
end

group :development do
  gem 'guard-rubocop', require: false
  gem 'listen', '~> 3.0.5'
  gem 'pry-byebug'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
end

group :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
end
