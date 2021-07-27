# == → オブジェクトの内容が等しいかどうか。データ型が違っても、人間の目で見て自然であれば、trueを返す
p 1 == 1.0
p "aaa" == "aaa"

class User
  attr_accessor :name, :age
  def initialize(name, age=0)
    @name = name
    @age = age
  end
end

a = User.new("user1")
b = User.new("user1")

p a == b 


# === → 主にcase式の内部で使われる。
# "when節のオブジェクト=== case節のオブジェクト"の結果を評価している。