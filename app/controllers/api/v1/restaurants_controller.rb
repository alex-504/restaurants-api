class Api::V1::RestaurantsController < Api::V1::BaseController
  # skip_before_action :authenticate_user!, only: [ :index ]
  
  def index
    @restaurants = policy_scope(Restaurant)
  end
end
