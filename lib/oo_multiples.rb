# Enter your object-oriented solution here!
class Multiples
  attr_accessor :limit, :start, :multiples

  def initialize(limit, start=1)
    @limit = limit
    @start = start
    @multiples = multiples
  end

  def collect_multiples
    self.multiples = (self.start...self.limit).select do |num|
      (num % 3 == 0 || num % 5 == 0)
    end
  end

  def sum_multiples
    collect_multiples
    sum = 0
    self.multiples.each do |num|
      sum += num
    end
    sum
  end
end

class ArgumentError < StandardError
end