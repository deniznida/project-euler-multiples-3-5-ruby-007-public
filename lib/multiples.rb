# Enter your procedural solution here!
def collect_multiples(limit)
  (1...limit).select do |num|
    (num % 3 == 0 || num % 5 == 0)
  end
end


def sum_multiples(limit)
  sum = 0
  collect_multiples(limit).each do |num|
    sum += num
  end
  sum
end