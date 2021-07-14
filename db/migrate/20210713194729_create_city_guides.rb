class CreateCityGuides < ActiveRecord::Migration[5.2]
  def change
    create_table :city_guides do |t|
      t.string :name
      t.string :image_url
      t.string :travel_info
      t.string :art
      t.string :design
      t.string :style
      t.integer :favorited_by
    end
  end
end
