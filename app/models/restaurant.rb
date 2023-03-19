class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas
end
