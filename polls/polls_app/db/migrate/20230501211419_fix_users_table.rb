class FixUsersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :author_id
    remove_column :users, :title
    add_column :users, :username, :string, unique: true, null: false
    add_index :users, :username
  end
end
