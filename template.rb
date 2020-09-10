#!/usr/bin/env ruby
require 'byebug'

def solution(a)
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 1, solution([3,1,2,4,3])
  end
  def test_empty
    assert_equal 0, solution([])
  end
  def test_single
    assert_equal 0, solution([1,1])
  end
  def test_border
    assert_equal 2, solution([-1,1])
  end
end
