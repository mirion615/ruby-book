class Bingo
  def self.generate_card
    cols = %w(B I N G O).each_with_index.map do |key, i|
      [key] + [*(i * 15 + 1)..(i * 15 +15)].sample(5)
  end
  cols[2][3] = " "
  cols.transpose.map do |row|
    row.map { |cell| cell.to_s.rjust(2) }.join(" | ")
  end.join("\n")
end