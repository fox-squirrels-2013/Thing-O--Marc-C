require 'sinatra'
require 'active_record'
require_relative './app/models/stock'

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'thing_o_marc_dev')


get '/' do
  erb :description
end

get '/create' do
  erb :create
end

post '/create' do
  # p params
  # p params[:stock]
  
  @stock = Stock.new
  
  # @stock.name = params[:stock][:name]
  # @stock.sector = params[:stock][:sector]
  # @stock.price = params[:stock][:price]
  @stock.update_attributes(params[:stock])
  # @stock.save
  erb :create
end

get '/list' do
  @stocks = Stock.all
  erb :list
end

get '/stock/:id' do
  @stock = Stock.find(params[:id])
  erb :stock
end

post '/update/:id' do
  @stock = Stock.find(params[:id])
  @stock.name = params[:bert]
  @stock.save

  @stocks = Stock.all
  erb :list
end

get '/destroy' do
  @stock = Stock.find(:id)
  @stock.id = params[:stock][:id]
  @stock.destroy

  erb :destroy
end

post '/destroy' do
  erb :destroy
end
