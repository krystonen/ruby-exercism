# return acronym of strings
class Acronym
  def self.abbreviate(string)
    # b is word boundary, then lookbehind:
    # any word character that is NOT preceded by apostrophe
    string.scan(/\b(?<!')\w/).join.upcase
  end
end
