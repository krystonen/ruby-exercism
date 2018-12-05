# Pangram: using each letter of the alphabet at least once
class Pangram
  def self.pangram?(sentence)
    return false if sentence.nil?

    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    new_string = sentence.downcase.gsub(/(\W|\d|_)/, '')

    return true if alphabet == sentence
    return true if alphabet == new_string.chars.uniq.sort.join
  end
end
