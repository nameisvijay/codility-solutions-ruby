#!/usr/bin/env ruby

def solution(x, a)
  left = x
  counter = [nil] * (x+1)
  a.each_with_index do |e,i|
    unless counter[e]
      counter[e] = 1
      left -= 1
      return i if left == 0
    end
  end
  return -1
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  #def test_single
    #assert_equal 0, solution()
  #end
  def test_border
    assert_equal 0, solution(1,[1,1,1])
  end
  def test_input
    assert_equal -1, solution(2,[1,1])
  end
  def test_example_input
    assert_equal 6, solution(5, [1,3,1,4,2,3,5,4])
  end
end

