# # ほかのクラスを軽症したクラスを作る
# # Productクラススーパークラス)はデフォルトのObjectクラスを継承する
# # 一方DVDクラス(サブクラス)はProductクラスを継承する必要がある（直接Objectクラスではない）
# # class Product
# # end

# # class DVD < Product
# # end

# class Product
#   attr_reader :name, :price

#   def initialize(name, price)
#     @name = name
#     @price = price
#   end
# end

# product = Product.new('A great movie', 3000)
# p product.name
# p product.price


# ## superでスーパークラスのメソッドを呼び出す
# class DVD < Product
#   attr_reader :runnning_time

#   def initialize(name, price, runnning_time)
#     super(name, price)
#     @runnning_time = runnning_time
#   end
# end

# dvd = DVD.new('A great movie', 1000, 120)
# p dvd.name
# p dvd.price
# p dvd.runnning_time


# ### メソッドのオーバーライド

# class Product
#   attr_reader :name, :price
  
#   def initialize(name, prize)
#     @name = name
#     @price = price
#   end

#   def to_s
#     "name: #{name}, price: #{price}"
#   end
# end

# class DVD < Product
#   attr_reader :running_time

#   def initialize(name, price, running_time)
#     super(name, price)
#     @running_time = running_time
#   end

#   def to_s
#     "#{super}, running rime: #{running_time}"
#   end
# end

# product = Product.new('A great movie', 1000)
# p product.to_s

# dvd = DVD.new('An awesome film', 3000, 120)
# p dvd.to_s

# ###メソッドの公開レベル
# ##デフォルトはpublicメソッドになる

# class User
#   def hello
#     'Hello!'
#   end
# end
# user = User.new
# p user.hello

# ###privateメソッド
# ##クラスの外からは呼び出せず、クラスの内部で使うもの(レシーバを指定して呼び出すことができないメソッド)
# class User2

#   private
#   def hello
#     'Hello!'
#   end
# end

# user = User2.new
# p user.hello #=>: private method `hello' called for #<User:0x00007fd278161b40> (NoMethodError)

# ##(レシーバを指定して呼び出すことができないメソッド)とは
# class User3
#   def hello
#     # nameメソッドはprivateなのでselfをつけたらエラーになる
#     "Hello, I am #{self.name}"
#   end

#   private
#   def name
#     'Alice'
#   end
# end

# user = User3.new
# p user.hello #=>private method `name' called for #<User3:0x00007fb6201dd2c8> (NoMethodError)

##privateメソッドはサブクラスでも呼び出せる
# class Product
#   def to_s
#     "name: #{name}"
#   end

#   private
#   def name
#     "A great movie!"
#   end
# end

# class DVD < Product
#   private
#   def name
#     "A awesome movie!"
#   end
# end

# product = Product.new
# p product.to_s

# dvd = DVD.new
# p dvd.to_s


###protectetdメソッド
class User
  attr_reader :name, :weight
  protected :weight

  def initialize(name, weight)
    @name = name
    @weight = weight
  end

  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
p alice.heavier_than?(bob)
p bob.heavier_than?(alice)