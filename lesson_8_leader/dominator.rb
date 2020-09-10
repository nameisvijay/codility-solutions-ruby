#!/usr/bin/env ruby
require 'byebug'

def solution(a)
  stack = []
  a.each do |e|
    stack << e and next if stack.empty?
    if e != stack.last
      stack.pop
    else
      stack << e
    end
  end
  candidate = stack.first
  if a.count(candidate) > (a.length / 2)
    return a.index(candidate)
  else
    return -1
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 0, solution([3,4,3,2,3,-1,3,3])
  end
  def test_empty
    assert_equal -1, solution([])
  end
  def test_single
    assert_equal 0, solution([1])
  end
end

