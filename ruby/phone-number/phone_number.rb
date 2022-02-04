=begin
Write your code for the 'Phone Number' exercise in this file. Make the tests in
`phone_number_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/phone-number` directory.
=end

class PhoneNumber
  def self.clean(number = "")
    number.gsub!(/\D/, "")
    if number.length == 11 && number[0] == "1"
      number = number[1..-1]
      if number[0] == "0" || number[0] == "1" 
        nil
      else
        number[3].to_i < 3 ? nil : number
      end
    elsif number.length == 10
      if number[0] == "0" || number[0] == "1" 
        nil
      else
        number[3].to_i < 3 ? nil : number
      end
    else
      nil
    end
  end
end