class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        delimiter = ","
        if numbers.start_with?("//")
            partitions = numbers.split("\n", 2) # this ensures numbers are split into 2 parts
            delimiter = partitions[0][2..-1]  # Extract delimiter after '//'
            numbers = partitions[1]
        end

        numbers = numbers.gsub("\n", delimiter)
        num_array = numbers.split(delimiter).map(&:to_i)

        num_array.sum
    end
end