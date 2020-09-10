#!/usr/bin/env ruby
#
def solution(a)
  hash = Hash.new(0)
  a.each do |e|
    hash[e] += 1
  end
  hash.each do |key,value|
    return key if value.odd?
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input1
    assert_equal 7, solution([9, 3, 9, 3, 9, 7, 9])
  end
end
