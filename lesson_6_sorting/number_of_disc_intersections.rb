#!/usr/bin/env ruby
require 'byebug'

MAX_INTERSECTIONS = 10000000
def solution(a)
  openings = []
  closings = []
  a.each_with_index do |e,i|
    openings << i - e
    closings << i + e
  end
  openings.sort!
  closings.sort!
  cenumerator = closings.each
  oenumerator = openings.each
  total_open = 0
  intersections = 0
  begin
    until(oenumerator.peek == nil) do
      o = oenumerator.peek
      e = cenumerator.peek
      if o <= e
        intersections += total_open
        total_open += 1
        oenumerator.next
      else
        total_open -= 1
        cenumerator.next
      end
      return -1 if intersections > MAX_INTERSECTIONS
    end
  rescue StopIteration
    return intersections
  end
end

require 'minitest/autorun'

class Tests < MiniTest::Unit::TestCase
  def test_example_input
    assert_equal 6, solution([1, 0, 1, 0, 1])
  end
  def test_single
    assert_equal 0, solution([5])
  end
  def test_border
    assert_equal 2, solution([1,0,0,1])
  end
end
