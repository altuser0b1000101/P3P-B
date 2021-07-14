class CreateRecs < ActiveRecord::Migration[5.2]
  def change
    create_table :recs do |t|
      t.string :ideas
      t.integer :user_id
    end
  end
end
