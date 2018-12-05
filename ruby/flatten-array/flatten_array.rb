# flatten arrays and remove nil values
class FlattenArray
  def self.flatten(arr)
    arr.flatten.delete_if(&:nil?)
  end
end

module BookKeeping
  VERSION = 1
end
