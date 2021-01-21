class RestaurantPolicy < ApplicationPolicy
  class Scope
    def resolve
      scope.all
    end        
  end  
end