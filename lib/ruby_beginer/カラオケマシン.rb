class KaramokeMashine
  KEYS = %w(C C# D D# E F F# G G# A A# B)

  def initialize(melody)
    @melody = melody
  end

  def transpose(amount)
    @melody.gsub(/[C-B]#?/){|k| 
      index = (KEYS.index(k) + amount) % 12 
      KEYS[index]
    }
  end
end
