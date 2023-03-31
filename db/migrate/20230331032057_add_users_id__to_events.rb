class AddUsersIdToEvents < ActiveRecord::Migration[7.0]
  def change
    add_reference :events, :users, null: false, foreign_key: true
  end
end
