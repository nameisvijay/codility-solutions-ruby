#!/usr/bin/env ruby
require 'byebug'

def solution(a,b)
  upstream = 0
  downstream = 1
  stack = []
  b.each_with_index do |e,i|
    stack << i and next if stack.empty?
    while (e == upstream and b[stack.last] == downstream and a[i] > a[stack.last])
      stack.pop
      break if stack.empty?
    end
    stack << i and next if stack.empty?
    if (e == upstream and b[stack.last] == downstream) 
      #still fight, eat and next
      next
    else
      #no fight
      stack << i
    end
  end
  return stack.size
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 2, solution([4,3,2,1,5], [0,1,0,0,0])
  end
  def test_single
    assert_equal 1, solution([0],[0])
  end
  def test_border
    assert_equal 1, solution([0,1], [1,0])
  end
end
