def fizz_buzz(number)
  if (number % 15).zero?
    'FizzBuzz'
  elsif (number % 3).zero?
    'Fizz'
  elsif (number % 5).zero?
    'Buzz'
  else
    number.to_s
  end
end
