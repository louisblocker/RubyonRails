class AddColumnsToPoll < ActiveRecord::Migration[6.0]
  def change
    add_column :polls, :author_id, :integer
    add_column :questions, :poll_id, :integer
    add_column :users, :username, :string, required: true, unique: true
  end
end
