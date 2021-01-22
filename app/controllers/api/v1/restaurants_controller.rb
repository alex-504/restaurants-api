class Api::V1::RestaurantsController < Api::V1::BaseController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_restaurant, only: [ :show, :update ]

  def index
    @restaurants = policy_scope(Restaurant)
  end

  def show
  end  

  def update
    if @restaurant.update(restaurant_params)
      render :show
    else
      render json: { message: "Deu ruim"}
    end
  end


  private

  def restaurant_params
    params.require(:restaurants).permit(:name, :address)
  end  

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
    authorize @restaurant  # For Pundit
  end
end
