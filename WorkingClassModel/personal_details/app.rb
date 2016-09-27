require 'sinatra'
	
get '/' do
	erb :get_name
end


post '/name' do
	name = params[:user_name]
	redirect '/age?users_name=' + name 
end


get '/age' do
name = params[:users_name].capitalize
	erb :get_age, :locals => {:name => name}
end

post '/age' do
	age = params[:user_age]
	name = params[:user_name]
	"Great #{name} you look great for #{age}!"
end





# post '/name' do
# 	name = params[:user_name]
# 	"Hello #{name}"
# end