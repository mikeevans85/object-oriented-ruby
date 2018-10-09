def method(string)
  x = string.split('')
  y = x.reverse
  z = y.join
  if z == string
    puts "It's a palindrome!"
  else
    puts "It's not a palindrome :-("
  end
end
p method("amanaplanacanalpanama")
