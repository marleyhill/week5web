require 'sinatra'
require 'shotgun'
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "this is a secret message"
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb :index
end

get '/cat-form' do
  erb :cat_form
end
