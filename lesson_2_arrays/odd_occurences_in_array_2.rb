#!/usr/bin/env ruby
#
def solution(a)
  return a.reduce(:^)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input1
    assert_equal 7, solution([9, 3, 9, 3, 9, 7, 9])
  end
end

