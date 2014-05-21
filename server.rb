require 'sinatra'
require 'rubygems'

set :bind, '0.0.0.0'

get '/' do
  erb :home
end

post '/sign_up' do
  @username = params[:username]
  @password = params[:password]
  erb :sign_up
end
