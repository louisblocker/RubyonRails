class CreatePoll < ActiveRecord::Migration[6.0]
  def change
    create_table :polls do |t|
      t.string :title, required: true
    end
  end
end
