class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response


    def create 
        res_pizza = RestaurantPizza.create(res_pizza_params)
        render json: res_pizza.pizza, serializer: PizzaSerializer
    end
    private

def res_pizza_params
  params.require(:restaurant_pizza).permit(:price, :pizza_id, :restaurant_id)
end
def render_not_found_respons
    render json: { error: "validation errors" }, status: :not_found
end
end
