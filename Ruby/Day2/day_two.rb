# Build the array
my_array = (1..16).to_a

# Still need to figure out how to print groups of four numbers at a time from
# the array

# Very easy using 'each_slice'
my_array.each_slice(4) {|a| p a}
