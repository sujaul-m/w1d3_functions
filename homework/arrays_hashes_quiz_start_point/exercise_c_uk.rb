united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.

# united_kingdom[1][:capital] = "Cardiff"
# p united_kingdom


# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).

united_kingdom <<  {
  name: "Northern Ireland",
  population: 1811000,
  capital: "Belfast"
}


p united_kingdom

# 3. Use a loop to print the names of all the countries in the UK.

# for countries in united_kingdom
#   p countries[:name]
# end


# 4. Use a loop to find the total population of the UK.

# found it difficult to run this loop without an error when the above code wasnt commented out, once above code was commented out the loop worked fine

total_population = 0

for population_of_uk in united_kingdom
  total_population += population_of_uk[:population]
end

p total_population
