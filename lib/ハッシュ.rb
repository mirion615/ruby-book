# ハッシュはキーと値の組み合わせで、データを管理するオブジェクトのこと
currencies = {'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}
currencies.each do |key, value|
  puts "#{key}: #{value}"
end

# シンボルはSymbolクラスのオブジェクト。文字列はStringクラスのオブジェクト
# シンボルはRubyの内部で整数として管理される。表面的には文字列似メル画、中身は整数。なので、文字列よりも高速に処理できる。
p :apple.class
p 'apple'.class

# 同じシンボルであれば、全く同じオブジェクトである。
p :apple.object_id
p :apple.object_id
p :apple.object_id

p 'apple'.object_id
p 'apple'.object_id
p 'apple'.object_id


# ハッシュは、表面上は文字列っぽいから人間にとって分かりやすい。でも中身は整数なので、コンピュータは高速に処理できる。
