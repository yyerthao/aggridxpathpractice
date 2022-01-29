=begin

What is a Hash?
--> a type of data structure
--> we can store a bunch of different pieces of information
--> similar to an array BUT
--> we can store a key value pair
------> store a value that has its own key

* Hashes are sometimes called dictionaries ...
--> dictionaries have the word itself, and then also the definition
--> word = key
--> definition = value




IMPORTANT:
* always need unique keys in each hash, no duplicate keys

=end



#create hash, by giving it a name
states = {
  1 => "Candy",
  :Pennsylvania => "PA",
  "New York" => "NY",
  "Oregon" => "OR"
}

# this will print out the entire key and value pairs
puts states
# this will return NY, the value of that key
puts states["New York"]
# this is the same as the puts statement above, will print out PA
puts states[:Pennsylvania]
# adding my own key and printing out the value of that key
puts states[1]

