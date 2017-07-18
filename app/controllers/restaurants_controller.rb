class RestaurantsController < ApplicationController
    def all
        @restaurants = Restaurant.all
    end

    def new
        @restaurant = Restaurant.new
    end

    def create
        @restaurant = Restaurant.new(restaurant_params)
        # @user = User.find(session[:user_id])
        # @restaurant.user = @user

        if @restaurant.save
        redirect_to "/restaurants/all", notice: "You have successfully created a Restaurant!"
        else
        flash[:errors] = @restaurant.errors.full_messages
        redirect_to "/restaurants/new"
    end
  end

  private
    def restaurant_params
       params.require(:restaurant).permit(:name)
    end
end
