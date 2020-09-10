#!/usr/bin/env ruby

def solution(a)
  counter = [0] * 1000000
  a.each do |e|
    counter[e-1] += 1 if e > 0
  end
  counter.each_with_index do |e,i|
    return i+1 if e == 0
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  #def test_single
    #assert_equal 0, solution()
  #end
  def test_extreme
    assert_equal 4, solution([1,2,3])
  end
  def test_border
    assert_equal 1, solution([-1,-3])
  end
  def test_example_input
    assert_equal 5, solution([1, 3, 6, 4, 1, 2])
  end
end


