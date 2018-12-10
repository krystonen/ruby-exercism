# Determine if a word or phrase is an isogram aka  "nonpattern word"
class Isogram
  def self.isogram?(input)
    # (\w) any word-character = the first capturing group
    # .* followed by any number of chars
    # (\1) backreference: turns regex true if it finds a match with (\w)
    !input.match(/(\w).*(\1)/i)
  end
end
