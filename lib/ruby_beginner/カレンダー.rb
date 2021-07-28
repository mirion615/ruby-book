# require 'date'

# head = Date.today.strftime("%B %Y")  #strftime => 時刻をformat文字列に従って文字列に変換した結果を返す。%B→月の名称。%Y→西暦。
# year = Date.today.year #今日の年
# mon = Date.today.mon   #今日の月
# firstday_wday = Date.new(year, mon, 1).wday #Date.new(2017, 9, 20)  # => #<Date: 2017-09-20 ...>
# lastday_wday = Date.new(year, mon, -1).day
# week = %w(Su Mo Tu We Th Fr Sa)

# puts head
# puts week.join(" ")
# print "   " * firstday_wday

# wday = firstday_wday
# (1..lastday_wday).each do |date|
#   print date.to_s.rjust(2) + " "
#   wday = wday + 1
#   if wday % 7 == 0
#     print "\n"
#   end 
# end

require 'date'

head = Date.today.strftime("%B %Y").center(20)
this_year = Date.today.year
this_month = Date.today.mon
firstday_wday = Date.new(this_year, this_month, 1).wday
last_day = Date.new(this_year, this_month, -1).day
week = %w(Su Mo Tu We Th Fr Sa)

puts head
puts week.join(" ")
print "   " * firstday_wday

wday = firstday_wday
(1..last_day).each do |date|
  print date.to_s.rjust(2) + " "
  wday += 1
  if wday % 7 == 0
    puts "\n"
  end
end