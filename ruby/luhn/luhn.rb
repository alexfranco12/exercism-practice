=begin
Write your code for the 'Luhn' exercise in this file. Make the tests in
`luhn_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/luhn` directory.
=end


class Luhn
  
  def self.valid?(number)
    number.gsub!(" ",  "")
    if number.length < 2 || !number.scan(/\D/).empty?
      return false
    end

    arr = number.split("").map! { |n| n.to_i }
    arr.reverse!.each_with_index do |num, i|
      if i % 2 != 0
        num *= 2
        num -= 9 if num > 9
        arr[i] = num
      end
    end

    sum = 0
    arr.each { |n| sum += n }

    sum % 10 == 0 ? true : false
  end

end

p Luhn.valid?("1") # => false
p Luhn.valid?("055 444 285") # => true
p Luhn.valid?("055a 444 285") # => false