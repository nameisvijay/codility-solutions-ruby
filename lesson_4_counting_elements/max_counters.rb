#!/usr/bin/env ruby
require 'byebug'

def solution(n,a)
  counter = [0] * (n+1)
  max_counter = 0
  current_max = 0
  a.each do |e|
    if e == (n + 1)
      #track max_counter encountered
      max_counter = current_max
    else
      #increse  the value of counter
      counter[e] = [max_counter, counter[e]].max + 1
      current_max = [current_max, counter[e]].max
    end
  end
  #adjust values of counters. value should not be less than max_counter 
  counter.each_with_index do |e,i|
    counter[i] = max_counter if counter[i] < max_counter
  end
  return counter[1..n]
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    byebug
    assert_equal [3, 2, 2, 4, 2], solution(5, [3,4,4,6,1,4,4])
  end
  def test_single_element
    assert_equal [1], solution(1,[1])
  end
  def test_max_counter
    assert_equal [0], solution(1,[2])
  end
end
