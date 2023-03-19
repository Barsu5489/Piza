class PizzaSerializer < ActiveModel::Serializer
  attributes :name, :ingredients
  #has_many :restaurants
end
