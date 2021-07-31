s = gets

a = s.split(':').map(&:to_i)
h = a[0]
m = a[1]

m += 30
if m > 59
  m -= 60
  h += 1
end

h = h.to_s
m = m.to_s

h = '0' + h if h.length == 1
m = '0' + m if m.length == 1

puts h + ':' + m