a = 1
b = 0
c = 5

n = 0
s = gets.to_i
while n < ( s - 3 )
  d = a + b + c
  a = b 
  b = c 
  c = d 
  n += 1
end

puts c