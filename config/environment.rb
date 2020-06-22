ENV['SINATRA_ENV'] ||= "development"
#we should use the "development" environment for both the shotgun and the testing suite
#we want to make sure that our migrations run on the same environment
require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])
configure :development do
  set :database, 'sqlite3:db/database.db'
end
#sets up a connection to sqlite3 database named database.db
#rake gives us the ability to quickly make files and set up automated tasks
require './app'
