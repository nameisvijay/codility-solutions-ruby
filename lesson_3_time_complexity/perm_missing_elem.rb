#!/usr/bin/env ruby
#
def solution(a)
  n = a.length
  total_required = ((n+1) * (n+2) / 2)
  return total_required - a.reduce(0,:+)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_empty
    assert_equal 1, solution([])
  end
  def test_single
    assert_equal 2, solution([1])
  end
  def test_example_input
    assert_equal 4, solution([2,3,1,5])
  end
end

