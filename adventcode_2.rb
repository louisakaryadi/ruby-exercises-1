my_input_file = File.open("adventcode_2input.txt")
input = my_input_file.read
numbers_array = input.chars

total_numbers = numbers_array.length

total = 0
index = -1

while index < total_numbers do
	if numbers_array[index] == numbers_array[index + 1]
		total += numbers_array[index].to_i
	end

	index += 1
end

puts total

