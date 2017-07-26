require 'sinatra'

get '/' do
  erb :index
end

post '/name' do
  name = params[:user_name]
  redirect '/age?user_name=' + name
end

get '/age' do
  name = params[:user_name]
  erb :get_age, :locals => {:name => name}
end

post '/age' do
  age = params[:user_age]
  name = params[:user_name]
  redirect '/three_numbers?user_name=' + name + '&user_age=' + age
end

get '/three_numbers' do
  age = params[:user_age]
  name = params[:user_name]
  erb :three_numbers, :locals => {:name => name, :age => age}
end

post '/three_numbers' do
    name = params[:user_name]
    age = params[:user_age]
    favnum1 = params[:user_number_1]
    favnum2 = params[:user_number_2]
    favnum3 = params[:user_number_3]
    redirect '/total?user_name=' + name + '&user_age=' + age + '&user_number_1=' + favnum1 + '&user_number_2=' + favnum2 + '&user_number_3=' + favnum3
  end
