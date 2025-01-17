require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.create(name:"Surrey", annual_revenue:224000, mens_apparel: false, womens_apparel:true)
whistler = Store.create(name:"Whistler", annual_revenue:1900000, mens_apparel: true, womens_apparel:false)
yaletown = Store.create(name: "Yaletown", annual_revenue:430000, mens_apparel: true, womens_apparel:true)


@mens_stores = Store.where(mens_apparel: true)

for store in @mens_stores
  puts "name: #{store.name} revenue: #{store.annual_revenue}"
end 

women_apparel_less_1M = Store.where("womens_apparel = true AND annual_revenue < 1000000")

for store in women_apparel_less_1M
  puts "name: #{store.name} revenue: #{store.annual_revenue}"
end 


puts women_apparel_less_1M.count