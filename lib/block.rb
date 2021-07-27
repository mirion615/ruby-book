#each_with_indexメソッド(ブロック引数の第2引数に添え字を渡す)
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}"}

# with_indexメソッドとの組み合わせ
fruits = ['apple', 'orange', 'melon']
p fruits.map.with_index { |fruit, i| "#{i}: #{fruit}"}

fruits = ['apple', 'orange', 'melon']
p fruits.delete_if.with_index{ |fruit, i| fruit.include?('a') && i.odd?}

#添字を0以外から開始
fruits = ['apple', 'orange', 'melon']
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}"}
fruits.map.with_index(10) { |fruit, i| puts "#{i}: #{fruit}"}