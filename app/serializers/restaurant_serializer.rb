class RestaurantSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :location
end
