#国名に応じて通貨を返す
def find_currency(country)
  currencies = { japan: 'yen', us: 'dollar', india: 'rupee'}
  currencies[country]
end

#指定されたされた国の通貨を大文字にして返す
def show_currency(country)
  currency = find_currency(country)
  #currencyがnilの場合を考慮して、&.演算子でメソッドを呼び出す
  p currency&.upcase
end

show_currency(:japan)
show_currency(:brazil)