my_input_file = File.open("adventcodeinput.txt")
input_array = my_input_file.read.split(", ")

directions_array = [:north, :east, :south, :west]

steps_performed = Hash.new(0)

index = 0;

input_array.each do |move_direction|
	if (move_direction[0] == "R")
		index = (index + 1) % 4
	else 
		index = (index - 1) % 4
	end
	
	number_steps = move_direction[1..-1].to_i
	
	steps_performed[directions_array[index]] += number_steps
end

x_position = steps_performed[directions_array[1]] - steps_performed[directions_array[3]]		#East - West
y_position = steps_performed[directions_array[0]] - steps_performed[directions_array[2]]		#North - South	

x_direction = x_position > 0 ? "East" : "West"
y_direction = y_position > 0 ? "North" : "South"

puts "The puzzle input leaves you #{x_position.abs} blocks #{x_direction} and #{y_position} blocks #{y_direction} away"

total_steps_away = x_position.abs + y_position.abs
puts "total steps: #{total_steps_away}"

my_input_file.close