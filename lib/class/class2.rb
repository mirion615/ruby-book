# selfキーワード
# selfを付けたり付けなかったり、そのままインスタンス変数にアクセスしたり、どれでもいける。
class User
  attr_accessor :name
  def initialize(name)
    @name = name
  end
  
  def hello
    "Hi, I am #{name}"
  end

  def hi
    "Hi, I am #{self.name}"
  end

  def my_name
    "My name is #{@name}"
  end
end

user = User.new('Alice')
p user.hello
p user.hi
p user.my_name

# selfの付け忘れで発生する不具合
# この場合、nameというローカル変数に'Bob'を代入しただけと捉えられてしまうため、メソッドが機能しない
class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    name = 'Bob'
  end

  def rename_to_carol
    self.name = 'Carol'
  end

  def rename_to_dave
    @name = 'Dave'
  end
end

user = User.new('Alice')
user.rename_to_bob
p user.name
user.rename_to_carol
p user.name
user.rename_to_dave
p user.name