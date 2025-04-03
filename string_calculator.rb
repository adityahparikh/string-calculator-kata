class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        deliminator = ","

        numbers = numbers.gsub("\n", deliminator)
        num_array = numbers.split(deliminator).map(&:to_i)

        num_array.sum
    end
end