class AddUserIdToStatuses < ActiveRecord::Migration
  def change
    add_column :statuses, :user_id, :integer
    add_index :statuses, :user_id #allows us to find user based on status
    remove_column :statuses, :name
  end
end
