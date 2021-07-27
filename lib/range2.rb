#配列[位置, 取得する長さ]

a = [1, 2, 3, 4, 5]
p a[1, 3]

#values_at
a = [1, 2, 3, 4, 5]
p a.values_at(0, 2, 4)

#[配列の長さ-1]
a = [5, 7, 9, 4, 5, 4, 4, 5, 1, 4, 7]
p a[a.size - 1]

#-1→最後の要素、-2→最後から2番めの要素
a = [5, 7, 9, 4, 5, 4, 4, 5, 1, 4, 7]
p a[-1]
p a[-2]
p a[-2, 2] #最後から2番めの要素から2つ取得

#lastメソッド
a = [5, 7, 9, 4, 5, 4, 4, 5, 1, 4, 7]
p a.last
p a.last(2) #最後の(n)個を取得

#firstメソッド
a = [5, 7, 9, 4, 5, 4, 4, 5, 1, 4, 7]
p a.first
p a.first(2) #最初の(n)個を取得

#要素の変更
a = [1, 2, 3]
a[-2] = -10
p a

#pushメソッド
a = []
a.push(1)
p a.push(2, 3)

#deleteメソッド
a = [1, 2, 3, 1, 2, 3]
p a.delete(2)
p a
p a.delete(5)
p a

#配列の連結
#concatメソッドを使うと元の配列が変更される(破壊的)
# +を使うと元の配列を変更せずに、新しい配列を作成する。→極力をこっちを使う

a = [1]
b = [2, 3]
p a.concat(b)
p a
p b

c = [1]
d = [2, 3]
p c + d
p c
p d

#配列の和集合、差集合、積集合(全て非破壊的)
a = [1, 2, 3]
b = [3, 4 ,5]
p a | b
p a - b # 左辺に含まれる要素を取り除く
p a & b #共通要素を返す

#集合演算をするときはSetクラスを使うほうが良い
require 'set'

a = Set.new([1, 2, 3])
b = Set.new([3, 4, 5])
p a | b
p a - b
p a & b

# %記法で文字列の配列を簡潔に作る
# 式展開や改行文字(\n),タブ文字(\t)などを含めたい場合、%W(大文字のW)を使う
['apple', 'melon', 'orange']
p %w!apple melon orange!
p %w(apple melon orange)
p %w(big\ apple small\ melon orange)
prefix = 'This is'
puts %W(#{prefix}\ an\ apple small\tmelon orange)

#文字列を配列に変換する
p 'Ruby'.chars
p 'Ruby, Java, Perl, PHP'.split(',') #引数で渡した区切り文字で、文字列を配列に分割

#配列に初期値を設定する
a = Array.new(5) {'default'}
p a
str = a[0]
p str
str.upcase!
p str
p a