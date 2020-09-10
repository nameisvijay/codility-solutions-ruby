#!/usr/bin/env ruby
require 'minitest/autorun'
def solution(n)
  b = n.to_s(2)
  longest_gap = b.scan(/(?<=1)0+(?=1)/).max_by(&:length)
  return longest_gap.nil? ? 0 : longest_gap.length
end

class Tests < MiniTest::Unit::TestCase
  def test_example_input1
    assert_equal 5, solution(1041)
  end
  def test_example_input2
    assert_equal 0, solution(32)
  end
  def test_example_input3
    assert_equal 2, solution(9)
  end
  def test_example_input4
    assert_equal 4, solution(529)
  end
  def test_example_input5
    assert_equal 1, solution(20)
  end
  def test_example_input6
    assert_equal 0, solution(15)
  end
end

