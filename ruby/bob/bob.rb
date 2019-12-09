class Bob
  def self.hey(remark)
    remark = remark.strip
    if remark.empty?
      "Fine. Be that way!"
    elsif !remark[/[a-zA-Z]/].nil? && remark == remark.upcase && remark.end_with?("?")
      "Calm down, I know what I'm doing!"
    elsif !remark[/[a-zA-Z]/].nil? && remark == remark.upcase
      "Whoa, chill out!"
    elsif remark.end_with?("?")
      "Sure."
    else
      "Whatever."
    end
  end
end
