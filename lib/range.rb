#rubyには「1から5まで」「aからeまで」という範囲を表すオブジェクトがあり、範囲オブジェクトと言う。
#..と...がある。前者を使うと最後の値が範囲に含まれ（以内）、後者を使うと含まれない（未満）。

range = 1..5
puts range.include?(0)

range2 = 1...5
puts range2.include?(5)

#範囲オブジェクトを変数に入れずに、直接メソッドを呼び出す時は( )に入れること
puts (1..5).include?(1)

#配列や文字列の一部を抜き出す
a = [1, 2, 3, 4, 5]
p a[1..3]

b = 'abcdefgh'
p b[1..3]

#n以上m以下、n以上m未満の判定をする

def liquid?(temprature)
  #0度以上,100度未満であれば液体と判定
  0 <= temprature && temprature < 100
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

def liquid?(temprature)
  (0...100).include?(temprature)
end
puts liquid?(-1)
puts liquid?(0)
puts liquid?(99)
puts liquid?(100)

# case文で使う
def charge(age)
  case age
  when 0..5
    puts 0
  when 6..12
    puts 300
  when 13..18
    puts 600
  else
    puts 1000
  end
end

charge(3)
charge(12)
charge(16)
charge(25)

# 値値が連続する配列を作成する
p (1..5).to_a
p (1...5).to_a
p ('a'..'e').to_a
p ('a'...'e').to_a
p ('bad'..'bag').to_a
p ('bad'...'bag').to_a

#[]の中に*と範囲オブジェクトを書いても同じように配列を作ることができる
p [*1..5]
p [*1...5]

#繰り返し処理を行う。
numbers = (1..4).to_a
sum = 0
numbers.each { |n| sum += n }
p sum

#上記は、配列に変換しなくても、範囲オブジェクトに対して直接eachメソッドを呼び出すことも可能
sum = 0
(1..4).each { |n| sum += n }
p sum

#stepメソッドを呼び出すと、値を増やす間隔を指定できる。
numbers = []
(1..10).step(2) { |n| numbers << n }
p numbers