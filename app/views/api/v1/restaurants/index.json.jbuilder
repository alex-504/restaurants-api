json.array! @restaurants do |restaurant|
  json.extract! restaurant, :id, :name
  # json.extract! restaurant.user, :email
  # # create arrays of comments (hash of arrays)
  # json.array! restaurant.comments do |comments|
  #   json.extract! comment, :content
  #   json.extract! comment.user. :email
  # end
end

#---> Equivalent to above, but more complex
# @restaurants.map do |restaurant|
#   { 
#     id: restaurant.id, 
#     name: restaurant.name, 
#     address: restaurant.address
#   }
# end