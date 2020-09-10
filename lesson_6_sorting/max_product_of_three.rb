#!/usr/bin/env ruby
#
def solution(a)
  n = a.length
  a.sort!
  if n == 3
    return a[0] * a[1] * a[2]
  end
  return [(a[-1] * a[-2] * a[-3]), (a[0] * a[1] * a[-1])].max
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 60, solution([-3,1,2,-2,5,6])
  end
  def test_base
    assert_equal -1, solution([-1,-1,-1])
  end
  def test_border
    assert_equal 1, solution([-1,-1,1,1])
  end
  def test_border2
    assert_equal 1, solution([-1,-1,-1,1])
  end
end
