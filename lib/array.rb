numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum += n
end

puts sum

# 配列の要素を削除する条件を自由に指定する
a = [1, 2, 3, 1, 2, 3]
a.delete(2)
p a

a = [1, 2, 3, 1, 2, 3]
a.delete_if do |n|
  n.odd?
end
p a

#ブロック引数とブロック内の変数(ブロック内で定義した変数はブロック内のみで使える)

numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
  sum_value = n.even? ? n * 10 : n
  sum += sum_value
end
puts sum

#do endを使わずに{}で囲ってみる
numbers = [1, 2, 3, 4]
sum = 0
numbers.each { |n| 
  sum += n 
}
puts sum

# map/collectメソッド→ブロックの戻りが配列の要素となる新しい配列を作成
numbers = [1, 2, 3, 4, 5]
new_numbers = numbers.map{ |n| n * 10}
p new_numbers

# select/find_allメソッド→プロックを評価し、戻り値がtrueの要素を集めた配列を返す。rejectメソッドはその逆でfalseを返す。
numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.select { |n| n.even?}
p even_numbers

numbers = [1, 2, 3, 4, 5, 6]
even_numbers = numbers.reject{ |n| n.even?}
p even_numbers

# find/deterctメソッド→ブロックの戻り値がtrueになった最初の要素だけを返す。
numbers = [1, 2, 3, 4, 5, 6]
even_number = numbers.find { |n| n.even?}
p even_number

# inject/reduceメソッド→たたみこみ演算を行うメソッド。ブロックの引数に初回のみinjectの引数が入る２回め以降は前回ブロックの戻り値が入る→((((0 + 1) +2) +3) +4)
numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n}
p sum

day = ['Mon', 'tue', 'wed', 'thu', 'fri', 'sat'].inject('sun') {|result, s| result + s}
p day

# &とシンボルを使ってもっと完結に書く
# mapやselectメソッドにブロックを渡す代わり(&:~~~)という引数を渡している。以下の条件は揃った時に使える。
# ①ブロック引数が１個だけである ②ブロックの中で呼び出すメソッドには引数がない ③ブロックの中ではブロック引数に対してメソッドを１回呼び出す以外の処理がない
p ['ruby', 'java', 'perl'].map { |s| s.upcase }
p ['ruby', 'java', 'perl'].map(&:upcase)

p [1, 2, 3, 4, 5, 6].select { |n| n.odd?}
p [1, 2, 3, 4, 5, 6].select(&:odd?)
