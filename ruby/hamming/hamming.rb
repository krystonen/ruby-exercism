# description/Explanation of Hamming class
class Hamming
  def self.compute(str1, str2)
    if str1.length != str2.length
      raise ArgumentError, 'Lengths of arguments are not equal.'
    end
    str1.length.times.count { |i| str1[i] != str2[i] }
  end
end

# description of BookKeeping module
module BookKeeping
  VERSION = 3
end
