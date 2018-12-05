#remcopeereboom
=begin
count: A second nitpick is to let Ruby's count
enumerable method do some more work for you.
count takes a block, which allows you to evaluate some logic (usually a boolean expression),
and maintains a count of each iteration in which that block is true.
This would help eliminate the use of the difference local variable.
=end

module Hamming
  def self.compute(strand_1, strand_2)
#this is counting a range from 0 to 3 (strand_1.length)
# we set a variable item to be counted as many times many times the character is not the same.


    0.upto(strand_1.length).count { |i| strand_1[i] != strand_2[i] }
  end
end



# bluurn

class Hamming
  VERSION = 1
  def self.compute(first, second)
    raise ArgumentError if first.length - second.length != 0
    strands = first.chars.zip(second.chars)
    strands.count { |pair| pair.first != pair.last }
  end
end


#filipow

class Hamming
    def self.compute(a, b)
        [a.length, b.length].min.times.count { |i| a[i] != b[i] }
    end
end


# enumerable is a mudoule that provides a set of methods to traverse, search,
# manipulates collections

#FOR LOOP

ark = ['cat', 'dog', 'pig', 'goat']
for animal in ark
  puts ark[animal]
end

#EACH
ark.each do | animal |
  puts animal
end
