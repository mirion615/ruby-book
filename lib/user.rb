module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

s = 'abc'

# s.log('Hello.') #=>: undefined method `log' for "abc":String (NoMethodError)  文字列は通常logメソッドを持たない
p s.extend(Loggable)  #=>文字列sにLoggeableモジュールのメソッドを特異メソッドとしてミックスインする。
p s.log('Hello.')