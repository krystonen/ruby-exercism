# Given a string of digits, output all the contiguous substrings of length `n`
# in that string.
class Series
  def initialize(series)
    @series = series
  end

  def slices(number)
    raise ArgumentError if @series.length < number

    result = @series.chars.each_cons(number).to_a
    result.map(&:join)
  end
end
