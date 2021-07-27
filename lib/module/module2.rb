##名前空間を分けて名前の衝突を防ぐ
##クラス名の重複が問題になることがある。そんなときに、名前空間としてのモジュールを使用する。
##同名のクラスがあっても、モジュール名が異なっていれば名前の衝突は発生しなくなる。

module Baseball
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end

    def throw
      puts "私は背番号#{@uniform_number}！#{@player}です！！！"
    end
  end
end

module Clock
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

a = Baseball::Second.new('Alice', 13)
puts a
puts a.throw
b = Clock::Second.new('15')
p b