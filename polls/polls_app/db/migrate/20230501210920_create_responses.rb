class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.references :answer_choice, foreign_key: {to_table: :answer_choices}, null:false
      t.references :question, foreign_key:true, null:false

      t.timestamps
    end
  end
end
