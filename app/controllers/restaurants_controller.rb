class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        restaurant = Restaurant.all
        render json: restaurant
    end

    def show 
        restaurant_pizza = Restaurant.find(params[:id])
        render json: restaurant_pizza, include: ['pizzas'] 
    end
    private

    def render_not_found_respons
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
