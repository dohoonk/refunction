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

ActiveRecord::Schema.define(version: 20190226045253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_careers", force: :cascade do |t|
    t.string "title"
    t.string "location"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "preview_description"
    t.boolean "published"
    t.string "career"
    t.string "posting_position"
    t.string "type_of_job"
  end

  create_table "admin_enquiries", force: :cascade do |t|
    t.string "email"
    t.text "content"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "department"
  end

  create_table "admin_referrals", force: :cascade do |t|
    t.string "category"
    t.string "client_name"
    t.string "name"
    t.datetime "client_birthday"
    t.string "company"
    t.string "client_phone"
    t.string "claim_number"
    t.string "client_address"
    t.string "address"
    t.string "client_city"
    t.string "phone"
    t.string "client_postal_code"
    t.string "email"
    t.datetime "date_of_injury"
    t.string "client_fax"
    t.string "client_language"
    t.string "realation_to_client"
    t.string "concerns"
    t.boolean "client_aware"
    t.string "client_sex"
    t.string "advertisement"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "admin_teams", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.string "occupation"
    t.text "bio"
    t.boolean "archived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_category_id"
    t.string "image"
    t.boolean "published"
    t.string "resume"
    t.string "phone"
    t.string "email"
    t.string "second_title"
    t.index ["job_category_id"], name: "index_admin_teams_on_job_category_id"
  end

  create_table "admin_testimonials", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.text "description"
    t.boolean "published"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.string "position"
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.text "message"
    t.string "resume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "services", force: :cascade do |t|
    t.string "title"
    t.string "picture"
    t.integer "display_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.text "description"
  end

  create_table "testimonials", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "published"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

  add_foreign_key "admin_teams", "job_categories"
end
