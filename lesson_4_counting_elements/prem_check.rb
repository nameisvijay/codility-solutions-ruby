#!/usr/bin/env ruby

def solution(a)
  n = a.length
  prem_sum = (n * (n+1) / 2)
  sum = a.reduce(0,:+)
  return (n == a.uniq.length and prem_sum == sum)  ?  1 : 0
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([4,1,3,2])
  end
  def test_border
    assert_equal 0, solution([4,1,3])
  end
end


