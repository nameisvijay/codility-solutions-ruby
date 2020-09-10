#!/usr/bin/env ruby
#
require 'byebug'

def solution(a)
  sum = a.reduce(:+)
  first_part = 0
  second_part = sum
  min_diff_so_far = 1 / 0.0
  a[0..(a.length-2)].each do |e|
    second_part -= e
    first_part += e
    diff = (second_part - first_part).abs
    min_diff_so_far = [diff, min_diff_so_far].min
  end
  return min_diff_so_far
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_single
    assert_equal 0, solution([1,1])
  end
  def test_border
    assert_equal 2, solution([-1,1])
  end
  def test_example_input
    assert_equal 1, solution([3,1,2,4,3])
  end
end
