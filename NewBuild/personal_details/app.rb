#app.rb
require 'sinatra'

require_relative 'add_func.rb'	

get '/' do

	erb :get_name

end

post '/name' do

	name = params[:user_name]

	redirect '/age?users_name=' + name 

end

get '/age' do

name = params[:users_name].capitalize

	erb :get_age, :locals =>{:name => name}

end

post '/age' do

	age = params[:user_age]

	name = params[:user_name]

	"Great #{name} you look great for #{age}!"

	redirect '/fav_num?=name=' + name + "&user_age=" + age

end

get '/fav_num' do

	name = params[:name]

	age = params[:age]

	erb :get_fav_num , :locals =>{:name => name, :age => age}

end

post '/fav_num' do

	name = params[:name]

	age = params[:age]

	fav1 = params[:user_fav1]

	fav2 = params[:user_fav2]

	fav3 = params[:user_fav3]

  sum = add(fav1.to_i, fav2.to_i, fav3.to_i)

if sum.to_i < age.to_i

	"Hello #{name}Your age is #{age} and greater than your three fav numbers which totals #{sum}."

	elsif sum.to_i > age.to_i

		"Hello #{name} Your age is #{age}  and is less than your three fav numbers #{sum}."

	else

		"hello #{name} Your age #{age} is exactly equal to the sum of your three favorite numbers which is  #{sum}."



end



end