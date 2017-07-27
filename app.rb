require 'sinatra'
require_relative "sum.rb"

# get '/' do
#   erb :index
# end
get '/' do
  erb :picture
end

post '/index' do
  redirect '/index'
end

get '/index' do
  erb :index
end

post '/name' do
  name = params[:user_name]
  lname = params[:l_user_name]
  redirect '/age?user_name=' + name + '&l_user_name=' + lname
end

get '/age' do
  name = params[:user_name]
  lname = params[:l_user_name]
  erb :get_age, :locals => {:name => name, :lname => lname}
end

post '/age' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  redirect '/hair?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age
end

get '/hair' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  erb :get_hair, :locals => {:name => name, :lname => lname, :age => age}
end

post '/hair' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  redirect '/eye?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair
end

get '/eye' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  erb :get_eye, :locals => {:name => name, :lname => lname, :age => age, :hair => hair}
end

post '/eye' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  food = params[:user_food]
  eye = params[:user_eye]
  redirect '/food?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair + '&user_eye=' + eye
end

get '/food' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  erb :get_food, :locals => {:name => name, :lname => lname, :age => age, :hair => hair, :eye => eye}
end

post '/food' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  food = params[:user_food]
  redirect '/drink?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair + '&user_food=' + food + '&user_eye=' + eye
end

get '/drink' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  food = params[:user_food]
  erb :get_drink, :locals => {:name => name, :lname => lname, :age => age, :hair => hair, :food => food, :eye => eye}
end

post '/drink' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  food = params[:user_food]
  drink = params[:user_drink]
  redirect '/three_numbers?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair + '&user_eye=' + eye + '&user_food=' + food + '&user_drink=' + drink
end

get '/three_numbers' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  food = params[:user_food]
  drink = params[:user_drink]
  erb :three_numbers, :locals => {:name => name, :lname => lname, :age => age, :hair => hair, :eye => eye, :food => food, :drink => drink}
end

post '/three_numbers' do
    name = params[:user_name]
    lname = params[:l_user_name]
    age = params[:user_age]
    hair = params[:user_hair]
    eye = params[:user_eye]
    food = params[:user_food]
    drink = params[:user_drink]
    favnum1 = params[:user_number_1]
    favnum2 = params[:user_number_2]
    favnum3 = params[:user_number_3]
    redirect '/total?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair + '&user_eye=' + eye + '&user_food=' + food + '&user_drink=' + drink + '&user_number_1=' + favnum1 + '&user_number_2=' + favnum2 + '&user_number_3=' + favnum3
end

get '/total' do
  name = params[:user_name]
  lname = params[:l_user_name]
  age = params[:user_age]
  hair = params[:user_hair]
  eye = params[:user_eye]
  food = params[:user_food]
  drink = params[:user_drink]
  favnum1 = params[:user_number_1].to_i
  favnum2 = params[:user_number_2].to_i
  favnum3 = params[:user_number_3].to_i
  sum = favnum1 + favnum2 + favnum3

  erb :total, :locals => {:name => name, :lname => lname, :age => age, :hair => hair, :eye => eye, :food => food, :drink => drink, :favnum1 => favnum1, :favnum2 => favnum2, :favnum3 => favnum3, :sum => sum}
end

# post '/total' do
#     name = params[:user_name]
#     lname = params[:l_user_name]
#     age = params[:user_age]
#     hair = params[:user_hair]
#     eye = params[:user_eye]
#     food = params[:user_food]
#     drink = params[:user_drink]
#     favnum1 = params[:user_number_1]
#     favnum2 = params[:user_number_2]
#     favnum3 = params[:user_number_3]
#
#     sum = add(favnum1, favnum2, favnum3)
#     p sum
#
#     redirect '/final?user_name=' + name + '&l_user_name=' + lname + '&user_age=' + age + '&user_hair=' + hair + '&user_eye=' + eye + '&user_food=' + food + '&user_drink' + drink + '&user_number_1=' + favnum1 + '&user_number_2=' + favnum2 + '&user_number_3=' + favnum3
# end
