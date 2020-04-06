class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.integer :user_id, required: true
      t.integer :answerchoice_id, required: true
    end
  end
end
