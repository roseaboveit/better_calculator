require 'sinatra'
require './calculator.rb'

get '/' do 
  "Please look at the URL
  Now, enter a slash (/) and the operation you wish to perform
  Finally, enter a slash and a number for each relevant number in the operation that you need"
end

calc = Calculator.new

get '/:operation/:first_number/:second_number' do
  operation = params[:operation]
  first_number = params[:first_number].to_i
  second_number = params[:second_number].to_i
  if operation == "add"
    calc.add(first_number,second_number).to_s
  elsif operation == "subtract"
    calc.subtract(first_number, second_number).to_s
  end
end