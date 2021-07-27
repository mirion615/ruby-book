class User
  attr_reader :first_name, :last_name, :age

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name = last_name
    @age = age
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)
users.each do |user|
  puts "氏名: #{user.full_name}, 年齢:#{user.age}"
end

#インスタンス変数とアクセサメソッド
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
puts user.name
user.name = 'Bob'
puts user.name


#クラスメソッドの定義
class User
  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|  
      User.new(name)
    end
  end

  def hello
    "Hello, I am #{@name}"
  end
end

names = ['Alice', 'Bob', 'Carol']
users = User.create_users(names)
users.each do |user|
  puts user.hello
end

# 定数
class Product
  DEFAULT_PRICE = 2359

  def self.default_price
    DEFAULT_PRICE
  end

  def default_price
    DEFAULT_PRICE
  end
end

puts Product.default_price
product = Product.new
puts product.default_price