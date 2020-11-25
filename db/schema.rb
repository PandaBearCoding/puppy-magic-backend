# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_23_215853) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "breed_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "breed_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "breeds", force: :cascade do |t|
    t.string "primary"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "profile_picture"
    t.string "postcode"
    t.text "description"
    t.string "organization"
    t.string "breed"
    t.string "size"
    t.string "gender"
    t.boolean "good_with_cats"
    t.boolean "good_with_dogs"
    t.boolean "good_with_children"
    t.boolean "house_trained"
    t.boolean "spayed_neutered"
    t.boolean "special_needs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "profile_picture_two"
    t.string "age"
    t.integer "distance"
  end

  create_table "environment_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "environment_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "environments", force: :cascade do |t|
    t.string "good_with"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "location_preferences", force: :cascade do |t|
    t.integer "user_id"
    t.integer "location_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "postcode"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer "user_id"
    t.integer "dog_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password"
    t.string "name"
    t.string "profile_picture"
    t.string "postcode"
    t.integer "age"
    t.string "phone_number"
    t.string "email"
    t.text "description"
    t.string "housing_type"
    t.string "has_yard"
    t.string "near_park"
    t.string "lifestyle"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
