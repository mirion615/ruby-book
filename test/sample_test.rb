require 'minitest/autorun'

class SampleTest < Minitest::Test
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end

  # def test_sample
  #   assert_equal 'RUBY', nil.upcase #nilは文字列ではないのでメソッドを呼べずにエラーになる
  # end
end