#!/usr/bin/env ruby
require 'byebug'

def solution(a,b,k)
  mod = a.modulo(k)
  if mod == 0
    min_value = a
  else
    min_value = (a + (k - a.modulo(k)))
  end
  return 0 if min_value > b
  return (b - min_value).div(k) + 1
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 3, solution(6,11,2)
  end
  def test_example_input2
    assert_equal 20, solution(11,345,17)
  end
  def test_empty
    assert_equal 0, solution(0,0,1)
  end
  def test_single
    assert_equal 1, solution(1,1,1)
  end
end

