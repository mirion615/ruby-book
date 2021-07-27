## モジュールの特徴
## ①モジュールからインスタンスを作成することはできない
## ②ほかのモジュールやクラスを継承することはできない
# class Product
#   def title
#     log 'title is called'
#     'A great movie'
#   end

#   private
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# class User
#   def name
#     log 'name is called'
#     'Alice'
#   end

#   private
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# product = Product.new
# p product.title

# user = User.new
# p user.name

# module Loggable
#   private
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# class Product
#   include Loggable

#   def title
#     log 'title is called'
#     'A great movie'
#   end
# end

# class User
#   include Loggable
#   def name
#     log 'name is called'
#     'Alice'
#   end
# end

# product = Product.new
# p product.title

# user = User.new
# p user.name

# module Loggable
#   def log(text)
#     puts "[LOG] #{text}"
#   end
# end

# class Product
#   extend Loggable

#   def self.create_products(names)
#     log 'create_products is called.'
#   end
# end

# puts Product.create_products([])

# puts Product.log('Hello.')

class Tempo
  include Comparable  
  attr_reader :bpm

  def initialize(bpm)
    @bpm = bpm
  end

  def <=>(other)
    if other.is_a?(Tempo)
      bpm <=> other.bpm
    else
      nil
    end
  end

  def inspect
    "#{bpm}bpm"
  end
end

p t_120 = Tempo.new(120)
p t_180 = Tempo.new(180)

p t_120 > t_180
p t_120 <= t_180
p t_120 == t_180
