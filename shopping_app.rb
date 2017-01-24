require 'sinatra'
require 'sinatra/reloader'

# Practice with Query String Params

get '/' do
  @name = params["name"]

  erb :index
end

# Practice with Form Params

get '/items/new' do
  erb :new_item
end

post '/items' do
  @item = params[:item]
  @price = params[:price]
  erb :cart
end

get '/users/new' do
  erb :new_user
end

get '/cart' do
  @item = params[:item]
  @price = params[:price]
  erb :cart
end

post '/users' do
  @username = params[:username]
  @password = params[:password]
  erb :user 
end
