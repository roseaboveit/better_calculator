require 'sinatra'
require './calculator.rb'

get '/' do 
  "Please look at the URL
  Now, enter a slash (/) and the operation you wish to perform
  Finally, enter a slash and a number for each relevant number in the operation that you need"
end

calc = Calculator.new

get '/add/:first_number/:second_number' do
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  calc.add(first_number,second_number).to_s
end

get '/subtract/:first_number/:second_number' do 
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  calc.subtract(first_number, second_number).to_s 
end

get '/multiply/:first_number/:second_number' do 
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  calc.multiply(first_number, second_number).to_s
end

get '/divide/:first_number/:second_number' do
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  calc.divide(first_number, second_number).to_s
end

get '/squareroot/:first_number' do
  first_number = params[:first_number].to_i
  calc.square_root(first_number).to_s
end