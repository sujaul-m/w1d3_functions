users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p users.values[0][:twitter]
puts"\n"

# 2. Get Erik's hometown
p users.values[1][:home_town]
puts"\n"

# 3. Get the array of Erik's lottery numbers
p users.values[1][:lottery_numbers]
puts"\n"

# 4. Get the type of Avril's pet Monty - Im having a hard time figuring this out - i seem to only get as far as showing [{:name=>"monty", :species=>"snake"}] instead of "snake"
p users["Avril"][:pets]
p users.values[2][:pets]
p users.fetch("Avril")[:pets]

puts"\n"

# 5. Get the smallest of Erik's lottery numbers
p users.values[1][:lottery_numbers][2]
puts"\n"

# 6. Return an array of Avril's lottery numbers that are even
for number in users["Avril"][:lottery_numbers][0..5]
  if number % 2 == 0
    p(number)
  end
end

puts"\n"
# 7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers
users.values[1][:lottery_numbers] = 7, 18, 34, 8, 11, 24
p users.values[1][:lottery_numbers]
puts"\n"

# 8. Change Erik's hometown to Edinburgh
users.values[1][:home_town] = "Edinburgh"
p users.values[1]
puts"\n"
puts"\n"
# 9. Add a pet dog to Erik called "Fluffy" - Again found it difficult to access the pets section so not sure if i did it the corrent way by adding everything again
# users.keys["Erik"][:pets][:name] = "Fluffy"
# users.keys["Erik"][:pets][:species] = "dog"
# p users.values[1][:pets]

users["Erik"] = [
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    },
    {
      :name => "Fluffy",
      :species => "dog"
    }
  ]
]


p users.values[1]
puts"\n"
puts"\n"
# 10. Add another person to the users hash
# tested to see how a hash would be added to figure out how to add new person to users
# hash = {:item1 => 1}
# hash[:item2] = 2
# p hash

users["Karim"] = [
  :twitter => "cheese",
  :lottery_numbers => [1, 4, 3, 8, 9, 5],
  :home_town => "Edinburgh",
  :pets => [
    {
      :name => "Casper",
      :species => "dog"
    }
  ]
]

p users
