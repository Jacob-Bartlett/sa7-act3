# This script reads a csv file and converts the data in a hash

# Read the csv file that is hardcoded into the script
data = File.read("data.csv")

# Split the lines by newlines
lines = data.split("\n")

# Since we know that the first line will be the headers, we take the first line and split that by commas to have our headers
headers = lines.shift.split(",")

# Init the last array as we will call it in the next block
final_array = []

# For each line, split the values and create a empty hash, next since we know the amt of values will = the amt of headers we index the
# headers and assign the indexed header onto the value next in the loop. Finally we push the final has into the final_array.
lines.each do |line|
    value = line.split(",")
    hash = {}

    headers.each_with_index do |header, index|
        hash[header] = value[index]
    end
    final_array.push(hash)
end

# Print the final_array containing the completed hashes
print final_array