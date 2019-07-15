class AddRestaurantIdToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :restaurant_id, :integer
  end
end
