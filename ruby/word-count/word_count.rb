# count how many occurrences of a word is in a text
class Phrase
  def initialize(text)
    @text = text
  end

  def word_count
    counter = Hash.new(0)
    words.each { |word| counter[word] += 1 }
    counter
  end

  def words
    @text.downcase.scan(/\b[\w']+\b/)
  end
end

module BookKeeping
  VERSION = 1
end
