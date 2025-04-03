class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        delimiter = ","
        num_array = numbers.split(Regexp.escape(delimiter)).map(&:to_i)

        num_array.sum
    end
end