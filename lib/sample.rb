puts 'Start.'
module Greeter
  def hello
    'Hello'
  end
end

begin
greeter = Greeter.new
rescue
  puts '例外処理が発生したが、このまま続行する'
end

puts 'End.'