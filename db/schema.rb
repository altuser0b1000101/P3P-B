# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_07_13_194803) do

  create_table "city_guides", force: :cascade do |t|
    t.string "image_url"
    t.string "travel_info"
    t.string "art"
    t.string "design"
    t.string "style"
    t.integer "favorited_by"
  end

  create_table "newsletters", force: :cascade do |t|
    t.integer "user_id"
    t.integer "city_guide_id"
    t.integer "newsletter_edition"
  end

  create_table "recs", force: :cascade do |t|
    t.string "ideas"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "name"
  end

end
