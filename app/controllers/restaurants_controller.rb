class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        restaurant = Restaurant.all
        render json: restaurant, each_serializer: RestaurantIndexSerializer
    end

    def show 
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: RestaurantSerializer
    end

    def destroy 
        restaurant = Restaurant.find(params[:id])
        restaurant.restaurant_pizzas.destroy_all
        restaurant.destroy
        head :no_content

    end
    private

    def render_not_found_respons
        render json: { error: "Restaurant not found" }, status: :not_found
    end
end
