class CreateNewsletters < ActiveRecord::Migration[5.2]
  def change
    create_table :newsletters do |t|
      t.integer :user_id
      t.integer :city_guide_id
      t.integer :newsletter_edition
    end
  end
end
