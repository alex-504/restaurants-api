class Api::V1::RestaurantsController < ApplicationController

  def index
    # @restaurants = Restaurant.all
    @restaurants = policy_scope(Restaurant) 
  end
  
end
