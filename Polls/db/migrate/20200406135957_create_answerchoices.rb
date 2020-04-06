class CreateAnswerchoices < ActiveRecord::Migration[6.0]
  def change
    create_table :answerchoices do |t|
      t.string :text
      t.integer :question_id
    end
  end
end
