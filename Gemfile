source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.3'

gem "aws-sdk-s3", require: false
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise', '~> 4.5.0'
gem 'jbuilder'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.3'
gem 'rack-cors', require: 'rack/cors'
gem 'rails', '~> 5.2'
gem 'simple_token_authentication', '~> 1.0'
gem 'faker'
gem 'redis'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
