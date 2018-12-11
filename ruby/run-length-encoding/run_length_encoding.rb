# transform string back&forth without losing original pattern
class RunLengthEncoding
  def self.encode(input)
    return input if input.empty?

    array = input.scan(/((\w|\s)\2*)/).map(&:first)
    string = ''

    array.each do |a|
      string << a.length.to_s if a.length > 1
      string << a[0]
    end
    string
  end

  def self.decode(input)
    return input if input.empty?

    string = ''
    array = input.scan(/(?<digit>(\d)?(\d)?)(?<letter>[A-Za-z|\s])/)

    array.each do |a|
      a[0] == '' ? string << a[1] : a[0].to_i.times { string << a[1] }
    end
    string
  end
end
