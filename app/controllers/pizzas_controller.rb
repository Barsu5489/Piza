class PizzasController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index 
        pizza = Pizza.all
        render json: pizza
    end
    private

    def render_not_found_respons
        render json: { error: "Pizza not found" }, status: :not_found
    end
end
