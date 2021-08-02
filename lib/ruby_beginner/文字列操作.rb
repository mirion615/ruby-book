# n = gets.to_i
# #数値に変えておく

# # 数値分同じことをやるよー
# n.times do 
#   t, c_h, c_m = gets.split(' ') #時刻と経過時間を入力させて、それぞれ変数にぶっこんでおく
#   h, m = t.split(':').map(&:to_i) # tに入れた時刻を分けて、配列にしてそれぞれぶっこむ
#   c_h = c_h.to_i #経過時間を数値に戻しておく
#   c_m = c_m.to_i

#   m += c_m #入力させた時刻に、経過時間を足してあげよう
#   h += c_h
#   if m > 59 #24時間表記にするため、59分を超えたら、繰り上げされるように条件分岐
#     m -= 60
#     h += 1
#   end
#   h -= 24 if h >23  #24:00という表記は今回はないので、00:00に戻す

#   m = m.to_s #経過後の時間を文字列にして改めて変数にぶっこむ
#   h = h.to_s

#   m = '0' + m if m.length == 1 #00:00表記にしたいので、一桁しかない場合は0をくっつける
#   h = '0' + h if h.length == 1

#   puts h + ':' + m #最後は全てをくっつけてあげよう
# end

n = gets.to_i

n.times do
    time, c_h, c_m = gets.split(' ')
    h, m = time.split(':').map(&:to_i)
    c_h = c_h.to_i
    c_m = c_m.to_i
    
    h += c_h
    m += c_m
    if m > 59
      m -= 60
      h += 1
    end
    h -= 24 if h > 24

    h = h.to_s
    m = m.to_s

    h = '0' + h if h.length == 1
    m = '0' + m if m.length == 1

    puts h + ':' + m
end