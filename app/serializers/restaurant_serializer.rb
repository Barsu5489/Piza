class RestaurantSerializer < ActiveModel::Serializer
  attributes :name, :address
  #has_many :pizzas
end
