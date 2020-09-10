#!/usr/bin/env ruby
#
def solution(x, y, d)
  distance = y - x
  jump = (distance / d)
  return jump + ((distance % d == 0) ? 0 : 1)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_single
    assert_equal 0, solution(1,1,1)
  end
  def test_example_input
    assert_equal 3, solution(10, 85, 30)
  end
end
