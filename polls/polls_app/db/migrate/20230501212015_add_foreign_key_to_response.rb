class AddForeignKeyToResponse < ActiveRecord::Migration[7.0]
  def change
    add_column :responses, :respondent_id, :bigint, null: false
    add_foreign_key :responses, :users, column: :respondent_id

    add_index :responses, :respondent_id
  end
end
