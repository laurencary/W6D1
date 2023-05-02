class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.references :author, null: false, foreign_key: { to_table: :users }
      t.string :title, null:false
      
      t.timestamps
    end
  end
end
