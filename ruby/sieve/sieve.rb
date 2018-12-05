# Sieve of Eratosthenes: find all the primes from 2 up to a given number
class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    array = (2..@number).to_a
    i = 0
    while i < array.length
      array.reject! { |n| (n % array[i]).zero? && array[i] != n }
      i += 1
    end
    array
  end
end

module BookKeeping
  VERSION = 1
end
