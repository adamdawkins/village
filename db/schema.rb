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

ActiveRecord::Schema.define(version: 2018_12_13_102642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bank_details", force: :cascade do |t|
    t.string "address_1"
    t.string "postcode"
    t.string "sort_code"
    t.string "account_number"
    t.string "country"
    t.bigint "sponsor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sponsor_id"], name: "index_bank_details_on_sponsor_id"
  end

  create_table "children", force: :cascade do |t|
    t.string "name"
    t.text "interests"
    t.bigint "community_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_children_on_community_id"
  end

  create_table "comments", force: :cascade do |t|
    t.bigint "post_id"
    t.text "text"
    t.string "authorable_type"
    t.bigint "authorable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authorable_type", "authorable_id"], name: "index_comments_on_authorable_type_and_authorable_id"
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "communities", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.bigint "country_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_communities_on_country_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.string "authorable_type"
    t.bigint "authorable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authorable_type", "authorable_id"], name: "index_posts_on_authorable_type_and_authorable_id"
  end

  create_table "sponsors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_sponsors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_sponsors_on_reset_password_token", unique: true
  end

  create_table "sponsorships", force: :cascade do |t|
    t.bigint "sponsor_id"
    t.bigint "child_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["child_id"], name: "index_sponsorships_on_child_id"
    t.index ["sponsor_id"], name: "index_sponsorships_on_sponsor_id"
  end

  create_table "staffs", force: :cascade do |t|
    t.bigint "community_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["community_id"], name: "index_staffs_on_community_id"
  end

  add_foreign_key "bank_details", "sponsors"
  add_foreign_key "children", "communities"
  add_foreign_key "comments", "posts"
  add_foreign_key "communities", "countries"
  add_foreign_key "sponsorships", "children"
  add_foreign_key "sponsorships", "sponsors"
  add_foreign_key "staffs", "communities"
end
