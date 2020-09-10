#!/usr/bin/env ruby
#

require 'minitest/autorun'
#
def solution(n)
  b = n.to_s(2)
  iterator = 0
  max_so_far = 0
  current_max = 0
  match_start = false
  while(iterator < b.length)
    if iterator + 1 < b.length and b[iterator] == '1' and b[iterator+1] == '0'
      match_start = true 
    end
    if match_start == true and b[iterator] == '0'
      current_max += 1
    end
    if iterator + 1 < b.length and b[iterator] == '0' and b[iterator+1] == '1'
      match_start = false
      max_so_far = [current_max, max_so_far].max
      current_max = 0
    end
    iterator += 1
  end
  return max_so_far
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
