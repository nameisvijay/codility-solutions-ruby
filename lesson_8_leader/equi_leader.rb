#!/usr/bin/env ruby
require 'byebug'

def find_leader(a)
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
  leader_count = a.count(candidate)
  if leader_count > (a.length / 2)
    return leader_count, candidate
  else
    return 0,-1
  end
end

def solution(a)
  count, leader = find_leader(a)
  return 0 if leader == -1
  n = a.length
  #initialize counters
  left_length = 0
  right_length = n
  leaders_in_left = 0
  leaders_in_right = count
  equi_leaders = 0
  #process array
  a.each_with_index do |e,i|
    if e == leader
      leaders_in_left += 1
      leaders_in_right -= 1
    end
    left_length += 1
    right_length -= 1
    if (leaders_in_left > (left_length / 2)) and (leaders_in_right > (right_length / 2))
      equi_leaders += 1
    end
  end
  return equi_leaders
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 2, solution([4,3,4,4,4,2])
  end
  #def test_empty
    #assert_equal -1, solution([])
  #end
  def test_single
    assert_equal 0, solution([1])
  end
end


