## デフォルト値つきの引数 ##

# def greeting(country = 'japan')
#   if country == 'japan'
#     puts 'こんにちは'
#   else
#     puts 'hello'
#   end
# end

# greeting
# greeting('us')

# #デフォルト値ありと、デフォルト値なしを混在させることもできる
# def default_args(a, b, c = 0, d = 0)
#   puts "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
# end

# # default_args(1,2)
# # default_args(1, 2, 3)
# default_args(1, 2, 3, 4)

# # # システム日時やほかのメソッドの戻り値をデフォルト値に指定することもできる
# def foo(time = Time.now, message = bar)
#   puts "time: #{time}, message: #{message}"
# end

# def bar
#   'BAR'
# end

# foo

# # ?で終わるメソッド→真偽値を返すメソッド(true, false)
# puts "".empty?  
# puts'watch'.include?('at')
# puts 1.odd? #奇数?
# puts 1.even? #偶数?
# puts nil.nil?
# puts 'abc'.nil?
# puts 1.nil?

# !で終わるメソッド
# k = 'katsuya'
# # puts k.upcase
# # puts k
# puts k.upcase! 
# puts k  # upcase!のように、呼び出したオブジェクトの状態を変えてしまうメソッドを「破壊的メソッド」と呼ぶ

def reverse_upcase!(s)
  s.reverse!.upcase!
end
s = 'ruby'
reverse_upcase!(s)
puts s