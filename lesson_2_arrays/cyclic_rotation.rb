#!/usr/bin/env ruby
#
def solution(a,k)
  n = a.length
  return a if n <= 1
  r = k % n
  return a[(n-r)..(n-1)] + a[0..(n-r-1)]
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input1
    assert_equal [9, 7, 6, 3, 8], solution([3, 8, 9, 7, 6], 3)
  end
  def test_empty
    assert_equal [], solution([], 3)
  end
  def test_single
    assert_equal [9], solution([9], 3)
  end
end
