
def uruu(n)
  if n % 4 != 0
    puts "平年"
  elsif n % 100 == 0 && n % 400 != 0
    puts "平年"
  else
    puts "閏年"
  end
end


y = gets.to_i
uruu(y)