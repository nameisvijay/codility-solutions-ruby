#!/usr/bin/env ruby
require 'byebug'

def solution(s)
  stack = []
  s.each_char do |e|
    if stack.empty?
      stack << e
      next
    end
    if (e == ')' and stack.last == '(')
      stack.pop
    else
      stack << e
    end
  end
  if stack.empty?
    return 1
  else
    return 0
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution("(()(())())")
  end
  def test_single
    assert_equal 0, solution("())")
  end
  def test_border
    assert_equal 1, solution("")
  end
end
