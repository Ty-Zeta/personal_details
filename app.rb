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
  name = params[:user_name]
  age = params[:user_age]
  redirect '/hair?user_name=' + name + '&user_age=' + age
end

get '/hair' do
  name = params[:user_name]
  age = params[:user_age]
  erb :get_hair, :locals => {:name => name, :age => age}
end

post '/hair' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  redirect '/eye?user_name=' + name + '&user_age=' + age + '&user_hair=' + hair
end

get '/eye' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  erb :get_eye, :locals => {:name => name, :age => age, :hair => hair}
end

post '/eye' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  eye = params[:user_eye]
  redirect '/food?user_name=' + name + '&user_age=' + age + '&user_hair=' + hair + '&user_eye=' + eye
end

get '/food' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  erb :get_food, :locals => {:name => name, :age => age, :hair => hair}
end

post '/food' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  redirect '/drink?user_name=' + name + '&user_age=' + age + '&user_hair=' + hair + '&user_food=' + food
end

get '/drink' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  erb :get_drink, :locals => {:name => name, :age => age, :hair => hair, :food => food}
end

post '/drink' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  drink = params[:user_drink]
  redirect '/three_numbers?user_name=' + name + '&user_age=' + age + '&user_hair=' + hair + '&user_food=' + food + '&user_drink' + drink
end

get '/three_numbers' do
  name = params[:user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  drink = params[:user_drink]
  erb :three_numbers, :locals => {:name => name, :age => age, :hair => hair, :food => food, :drink => drink}
end

post '/three_numbers' do
    name = params[:user_name]
    age = params[:user_age]
    hair = params[:user_hair]
    food = params[:user_food]
    drink = params[:user_drink]
    favnum1 = params[:user_number_1]
    favnum2 = params[:user_number_2]
    favnum3 = params[:user_number_3]
    redirect '/total?user_name=' + name + '&user_age=' + age + '&user_number_1=' + favnum1 + '&user_number_2=' + favnum2 + '&user_number_3=' + favnum3
end

get '/total' do
  name = params[:user_name]
  age = params[:user_age]
  favnum1 = params[:user_number_1]
  favnum2 = params[:user_number_2]
  favnum3 = params[:user_number_3]
  erb :total, :locals => {:name => name, :age => age, }
end
