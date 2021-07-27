n = gets.to_i
i = 1
s = 0
n.times {
    a = gets.to_i
    s += (a - i).abs 
    i = a
}
puts s

# .absはレシーバーの絶対値を返す