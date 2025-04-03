class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        delimiter = ","
        if numbers.start_with?("//")
            partitions = numbers.split("\n", 2) # this ensures numbers are split into 2 parts
            raise "Incorrect string format detected." if partitions.length != 2
            delimiter = partitions[0][2..-1]  # Extract delimiter after '//'
            numbers = partitions[1]
        end

        numbers = numbers.gsub("\n", delimiter)
        num_array = numbers.split(delimiter).map(&:to_i)

        negatives = num_array.select { |num| num < 0 }
        raise "negative numbers not allowed #{negatives.join("," )}" unless negatives.empty?

        num_array.sum
    end
end