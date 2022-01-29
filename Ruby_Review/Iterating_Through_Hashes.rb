# iterating through hashes

friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = {
  "Mom" => "Yer",
  "Dad" => "Pao",
  "Big brother" => "Ben",
  "Little brother" => "Winston"
}

puts friends
puts family
puts family["Mom"] #returns value of Yer
puts "These are the keys: #{family.keys}"
puts "These are the values: #{family.values}"

newFamily = Hash.new
puts newFamily

