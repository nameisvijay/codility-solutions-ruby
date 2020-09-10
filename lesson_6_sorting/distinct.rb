#!/usr/bin/env ruby
require 'byebug'

def solution(a)
  # write your code in Ruby 2.2
  stack = [] 
  sa = a.sort
  sa.each do |e|
    if stack.empty?
      stack << e
    else
      stack << e if stack.last != e
    end
  end
  return stack.length
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 3, solution([2,1,1,2,3,1])
  end
end
