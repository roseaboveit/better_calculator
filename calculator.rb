class Calculator

  def add(first_num, second_num)
    first_num + second_num
  end

  def subtract(first_num, second_num)
    first_num - second_num
  end

  def multiply(first_num, second_num)
    first_num * second_num
  end

  def divide(first_num, second_num)
    first_num.to_f / second_num
  end

  def exponify(base, exponent)
    base ** exponent
  end

  def square_root(number)
    exponify(number, 0.5)
  end

  def parse(string_equation)
    number_array = []
    operator = "/"
    string_equation.each_char do |character|
      number = character.to_i
      if number == 0
        if character == "0"
          number_array.push(number) 
        else
          operator = character
        end 
      else
        number_array.push(number)  
      end 
    end
    evaluate(number_array, operator)
  end

  def evaluate(num_ary, operator)
    case operator
      when "+"
        add(num_ary[0], num_ary[1])
      when "-"
        subtract(num_ary[0], num_ary[1])  
      when "*"
        multiply(num_ary[0], num_ary[1]) 
      when "/"
        divide(num_ary[0], num_ary[1])
    end
  end
end

# def find_numbers
# num_ary = []
# ['+', '-', '/', '*'].each do |op|
#   num_ary = string_equation.split(op)
# end

#def find_operator


#
#[2, 2, 2, +, +] 



