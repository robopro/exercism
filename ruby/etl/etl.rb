class ETL
  def self.transform(old_hash)
    old_hash.each_with_object({}) do |(points, letters), new_hash|
      letters.each do |letter|
        new_hash[letter.downcase] = points
      end
    end
  end
end
