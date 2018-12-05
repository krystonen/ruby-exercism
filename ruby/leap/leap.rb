# check whether the given year is a leap year or not
class Year
  def self.leap?(year)
    if (year % 400).zero? || (year % 4).zero? && year % 100 != 0
      true
    else
      false
    end
  end
end

module BookKeeping
  VERSION = 3
end
