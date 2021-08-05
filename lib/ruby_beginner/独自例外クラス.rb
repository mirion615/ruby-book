class NoCountryError < StandardError
  #国名を属性として取得できるようにする
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    puts 'yen'
  when :us
    puts 'dollar'
  when :india
    puts 'rupee'
  else
    #NocountryErrorを発生させる
    raise NoCountryError.new('無効な国名です。', country)
  end
end

# begin
#   currency_of(:japan)
# rescue NoCountryError => e
#   #エラーメッセージと国名を出力する
#   puts e.message
#   puts e.country
# end

a = currency_of(:japan)
puts a
b = currency_of(:italy)
puts b