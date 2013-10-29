require 'sinatra/activerecord/rake'
require './app'

namespace :db do
  desc "create the postgres database"
  task :create do
    `createdb thing_o_marc_dev`
  end

  desc "drop the postgres database"
  task :drop do
    `dropdb thing_o_marc_dev`
  end
end
