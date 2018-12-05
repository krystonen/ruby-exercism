# the possible responses of Bob, a lackadaisical teenager...
class Bob
  def self.hey(remark)
    if with_letters(remark) && remark == remark.upcase
      if remark.end_with?('?')
        "Calm down, I know what I'm doing!"
      else
        'Whoa, chill out!'
      end
    elsif remark.strip.end_with?('?')
      'Sure.'
    elsif stripped(remark) == ''
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end

  def self.with_letters(remark)
    !remark.scan(/\p{L}/).empty?
  end

  def self.stripped(remark)
    remark.strip
  end
end

module BookKeeping
  VERSION = 2
end
