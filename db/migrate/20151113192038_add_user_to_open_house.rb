class AddUserToOpenHouse < ActiveRecord::Migration
  def change
    add_column :open_houses, :user_id, :integer
  end
end
