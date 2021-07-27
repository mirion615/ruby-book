status = 'error'
unless status == 'ok'
  puts '何か以上があります'
else
  puts '正常です'
end


country = 'italy'

if country == 'japan'
  puts 'こんにちは'
elsif country == 'us'
  puts 'Hello'
elsif country == 'italy'
  puts 'ciao'
end

case country
when 'japan'
  puts 'こんにちは'
when 'us'
  puts 'Hello'
when 'italy'
  puts 'ciao'
end

