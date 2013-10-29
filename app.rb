require 'sinatra'
require 'active_record'
require_relative './app/models/stock'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'thing_o_marc_dev')


get '/' do
  erb :description
end
