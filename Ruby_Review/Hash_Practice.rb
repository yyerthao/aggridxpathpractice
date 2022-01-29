system("clear")

puts "\n=== Creating Hashes ===\n\n"

array = ["tomatoes", "milk", 11, "bob"]

abc_1 = {"a" => 1, "b" => 2, "c" => 3} # string, value

abc_2 = {"a": 1, "b": 2, "c": 3} # symbol, value

abc_3 = {:a => 1, :b => 2, :c => 3} # symbol, value

abc_4 = {a: 1, b: 2, c: 3} # symbol, value

abc_5 = {} #empty hash

abc_6 = Hash.new # empty hash

puts "abc_1 = #{abc_1} \n abc_2 = #{abc_2} \n abc_3 = #{abc_3} \n abc_4 = #{abc_4} \n abc_5 = #{abc_5} \n abc_6 = #{abc_6}"

puts "\n=== Accessing Hashes ===\n\n"

fruits = {watermelon: 4.99, pear: 2.99}

puts "Watermelon cost: #{fruits[:watermelon]} \n Pear cost: #{fruits[:pear]}"


# how to only retrieve the keys and values of the given hash

puts "Keys: #{fruits.keys} and Values: #{fruits.values}"







































#








