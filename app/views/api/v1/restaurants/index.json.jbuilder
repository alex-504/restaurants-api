json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name, :address
end

#---> Equivalent to above, but more complex
# @restaurants.map do |restaurant|
#   { 
#     id: restaurant.id, 
#     name: restaurant.name, 
#     address: restaurant.address
#   }
# end