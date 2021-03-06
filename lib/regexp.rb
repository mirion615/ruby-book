#rubyでの正規表現を使ったキャプチャ方法(matchメソッド)
text = '私の誕生日は1977年7月17日です'
m = /(\d+)年(\d)月(\d+)日/.match(text)
p m[1]
p m[2]
p m[3]

#条件分岐の中で真偽値の判定とローカル変数への代入を同時にやる
text = '私の誕生日は1977年7月17日です'
if m = /(\d+)年(\d)月(\d+)日/.match(text)
  #マッチした時の処理
else
  #マッチしなかったときの処理
end

# MatchDataオブジェクトは[]を使って正規表現の処理結果を配列と同じような方法で取得できる。
# マッチした部分全体を取得
# キャプチャの２番目を取得
# キャプチャの２番目から２個取得する
# Rangeを使って取得
text = '私の誕生日は1977年7月17日です'
m = /(\d+)年(\d)月(\d+)日/.match(text)
p m[0]
p m[2]
p m[2, 2]
p m[1..3]

#キャプチャの結果に名前をつけよう。そうすればシンボルで取得ができる。文字列でもいける。
text = '私の誕生日は1977年7月17日です'
m = /(?<year>\d+)年(?<month>\d)月(?<day>\d+)日/.match(text)
p m[:year]
p m[:month]
p m[:day] 

# =~演算子を使うと、キャプチャの名前がそのままローカル変数に割り当てられる。
text = '私の誕生日は1977年7月17日です'
if /(?<year>\d+)年(?<month>\d)月(?<day>\d+)日/ =~ text
  puts "#{year}年#{month}月#{day}日"
end

#正規表現と組み合わせると便利なメソッド
# scan
p '123 456 789'.scan(/\d+/)
p '1977年7月17日 2016年12月31日'.scan(/(\d+)年(\d+)月(\d+)日/)
p '1977年7月17日 2016年12月31日'.scan(/(?:\d+)年(?:\d+)月(?:\d+)日/)
p '1977年7月17日 2016年12月31日'.scan(/\d+年\d+月\d+日/)

# [], slice, slice!
text = '郵便番号は123-4567です。456-7890'
p text[/\d{3}-\d{4}/]
text2 = '私の誕生日は1977年7月17日です'
p text2[/(\d+)年(\d)月(\d+)日/]
p text2[/(\d+)年(\d)月(\d+)日/, 3]
p text2[/(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/, :month]

p text.slice(/\d{3}-\d{4}/)
p text2.slice(/(\d+)年(\d+)月(\d+)日/, 1)

# splitメソッド
text = '123, 456-789'
p text.split(',')
p text.split(/,|-|8/)

#gsubメソッド
text = '123,456-789'
p text.gsub(',', ':')
p text.gsub(/,|-/, ':')

text = '私の誕生日は1977年7月17日です'
p text.gsub((/(\d+)年(\d+)月(\d+)日/), '\1の\2であり\3なの')
p text.gsub(/(?<year>\d+)年(?<month>\d)月(?<day>\d+)日/, '\k<year>の\k<month>で\k<day>なの')