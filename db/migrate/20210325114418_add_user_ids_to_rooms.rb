class AddUserIdsToRooms < ActiveRecord::Migration[5.2]
  def change
  	add_column :rooms, :user_id, :integer
  	add_column :rooms, :create_id, :integer
  end
end
