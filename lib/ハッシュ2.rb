currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies[:us]
currencies[:italy] = 'euro'
p currencies

currencies = {japan: 'yen', us: 'dollar', india: 'rupee'}
currencies[:us]

#keysメソッド
#valuesメソッド
#has_key?, key?, include?, member?

currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies.keys
p currencies.values
p currencies.has_key?(:japan)
p currencies.has_key?(:italy)

# ハッシュから配列へ。配列からハッシュへ
currencies = {:japan => 'yen', :us => 'dollar', :india => 'rupee'}
p currencies.to_a
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
p array.to_h

h = Hash.new('hello')
a = h[:foo]
b = h[:bar]
p a.equal?(b)
a.upcase!
p a
p b