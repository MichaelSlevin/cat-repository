require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "Secret message..."
end

get '/shotgun' do
  "I havent killed and restarted the program"
end

get '/random-cat' do
  @name = ["Al", "Michael", "Ed"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/named-cat' do
  p params
  erb(:cat_naming_form)
end
