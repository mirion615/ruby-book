## Rubyの変数にはオブジェクトそのものではなく、オブジェクトへの参照が格納されている ##

a = 'hello'
b = 'hello'
puts a.object_id
puts b.object_id

c = b 
puts c.object_id

def m(d)
  d.object_id
end

puts m(c)


# 同じオブジェクトを参照している場合、オブジェクトの状態が変更されると、その変更がそのまま各変数に影響する

a = 'hello'
b = 'hello'
c = b
puts c

def m!(d)
  d.upcase!
end
puts m!(c)

puts b
puts c
puts a

#〜文字列、配列、ハッシュといった変更可能のp部ジェクトを参照しているのか、異なるオブジェクトを参照しているのかを意識する〜