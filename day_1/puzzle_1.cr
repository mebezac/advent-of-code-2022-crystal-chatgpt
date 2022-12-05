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

# Find the Elf carrying the most Calories
elf_with_most_calories = elf_calories.max

# Print the total Calories carried by the Elf with the most Calories
puts elf_with_most_calories
