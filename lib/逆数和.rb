def num
  sum = 0
  (1..).each do |n|
    sum += 1.quo(n)
    if sum > 10
      return n
    end
  end
end

puts num