require 'sinatra'
require './calculator.rb'

get '/' do 
  "Please look at the URL
  Now, enter a slash (/) and the operation you wish to perform
  Finally, enter a slash and a number for each relevant number in the operation that you need"
end

get '/:add/:first_number/:second_number' do
  calc = Calculator.new
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  calc.add(first_number,second_number).to_s
end