# Gigasecond calculates the moment when someone has lived for 10^9 seconds.
class Gigasecond
  def self.from(start_date)
    start_date + 10**9
  end
end

module BookKeeping
  VERSION = 6
end
