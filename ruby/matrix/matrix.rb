# returns rows and columns of a string separated by new line char
class Matrix
  def initialize(string)
    @string = string
  end

  def rows
    @string.split(/\n/).map { |r| r.split(' ').map(&:to_i) }
  end

  def columns
    i = 0
    columns = []
    while i < rows.length - 1
      col = []
      rows.each { |row| col << row[i] }
      i += 1
      columns << col
    end
    columns
  end
end
