def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/:(\w+) *=> */, '\1: ') #\1は1番目にキャプチャされた文字列を表す
end