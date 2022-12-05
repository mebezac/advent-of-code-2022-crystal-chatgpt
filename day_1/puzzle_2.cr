# Read the input from a file passed as an argument to the program
input = File.read(ARGV[0])

# Split the input by two consecutive newlines
elves = input.split("\n\n")

# Create a list of the Calories carried by each Elf
elf_calories = [] of Int32
elves.each do |elf|
  # Split each Elf's inventory by newlines and filter out empty lines
  items = elf.split("\n").reject { |i| i.empty? }
  # Convert the strings of Calories to integers and sum them
  total_calories = items.map { |i| i.to_i32 }.sum
  # Add the total Calories for this Elf to the list
  elf_calories << total_calories
end

# Sort the Elves by the number of Calories they carry
sorted_elves = elf_calories.sort.reverse

# Get the top three Elves carrying the most Calories
top_three_elves = sorted_elves[0...3]

# Sum the Calories carried by the top three Elves
total_calories = top_three_elves.sum

# Print the total Calories carried by the top three Elves
puts total_calories
