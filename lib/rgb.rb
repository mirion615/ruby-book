# def to_hex(r, g ,b)
#   r.to_s(16).rjust(2, '0') +
#   g.to_s(16).rjust(2, '0') +
#   b.to_s(16).rjust(2, '0')
# end

# #リファクタリング後↓
# def to_hex(r, g, b)
#   hex = '#'
#   [r, g, b].each do |n|
#     hex += n.to_s(16).rjust(2, '0')
#   end
#   hex
# end

#更にリファクタリング後↓
def to_hex(r, g, b)
  [r, g, b].inject('#') do |hex, n|
    hex + n.to_s(16).rjust(2, '0')
  end
end

# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   ints = []
#   [r, g, b].each do |s|
#     # hexメソッド→16進数を10進数に変える
#     ints << s.hex
#   end
#   ints
# end

# #リファクタリングタイム↓
# def to_ints(hex)
#   r = hex[1..2]
#   g = hex[3..4]
#   b = hex[5..6]
#   [r, g, b].map do |s|
#   #mapはブロックの戻り値を配列の要素にして、新しい配列を返すメソッド。
#     s.hex
#   end
# end

# #更にリファクタリング↓↓
# def to_ints(hex)
#   r , g, b = hex.scan(/\w\w/)
#   [r, g, b].map do |s|
#     s.hex
#   end
# end
# #もうちょうい↓
# def to_ints(hex)
#   hex.scan(/\w\w/).map do |s|
#     s.hex
#   end
# end

#ラスト↓
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end