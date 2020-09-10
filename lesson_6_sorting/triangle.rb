#!/usr/bin/env ruby
#
def is_triangular?(a,b,c)
  return ((a + b) > c and (b + c) > a and (a + c) > b)
end
def solution(a)
  n = a.length
  return 0 if n < 3
  sa = a.sort
  sa.each_cons(3) do |e1,e2,e3|
    return 1 if is_triangular?(e1,e2,e3)
  end
  return 0
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([3,1,2,4,3])
  end
  def test_single
    assert_equal 0, solution([1,1])
  end
  def test_border
    assert_equal 1, solution([1,1,1])
  end
end
