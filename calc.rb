

def input1
  print 'Give your first number: '
  @num1 = gets.strip.downcase

  case @num1
  when 'c'
    calc_begin
  when 'q'
    exit(0)
  else
    @num1.to_f
    operator
  end
end


def operator
  print 'What is the operator? '
  @op = gets.strip
  case @op
  when 'c'
    calc_begin
  when 'q'
    exit(0)
  else
    @op
    input2
  end
end


def input2
  print 'Give your second number: '
  @num2 = gets.strip.downcase

  case @num2
  when 'c'
    calc_begin
  when 'q'
    exit(0)
  else
    @num2.to_f
    result
  end
end

def result
  answer = input1.send(operator.to_sym, input2)
  puts "#{@num1} #{@op} #{@num2} = #{answer}"
end

puts 'Calculator'
puts 'c to clear'
puts 'q to quit'
input1


#puts 'Give your second number: '
#input2 = gets.to_i
