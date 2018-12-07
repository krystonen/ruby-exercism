# Determine if a word or phrase is an isogram aka  "nonpattern word"
class Isogram
  def self.isogram?(input)
    !input.match(/(\w).*?+(\1)/i)
  end
end
