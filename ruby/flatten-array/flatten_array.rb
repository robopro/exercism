class FlattenArray
  def self.flatten(array)
    array.flatten.reject { |item| item.nil? }
  end
end
