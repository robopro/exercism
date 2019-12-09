class PhoneNumber
  def self.clean(num)
    num = num.gsub(/\D/, "")
    num[0] = '' if num.size == 11 && num[0] == "1"
    return num if num.size == 10 && num[0] !~ /(0|1)/ && num[3] !~ /(0|1)/
    nil
  end
end
