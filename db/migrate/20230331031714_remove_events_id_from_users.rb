class RemoveEventsIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :events_id
  end
end
