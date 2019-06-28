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

ActiveRecord::Schema.define(version: 20190626002220) do

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
    t.string "client_sex_other"
    t.string "client_advertisement_other"
    t.string "client_email"
    t.string "referral_source_name"
    t.string "assistant_phone"
    t.string "assistant_email"
    t.string "city"
    t.string "rs_office_address"
    t.string "rs_name"
    t.string "rs_phone"
    t.string "rs_fax"
    t.string "rs_email"
    t.string "rs_represents"
    t.string "rs_city"
    t.string "rs_postal_code"
    t.string "rs_assistant_name"
    t.string "rs_assistant_phone"
    t.string "rs_assistant_email"
    t.string "client_id"
    t.string "client_file_number"
    t.datetime "client_date_of_birth"
    t.datetime "client_report_deadline"
    t.datetime "client_trial_date"
    t.string "client_trial_duration_in_days"
    t.datetime "client_date_of_injury"
    t.string "client_gender"
    t.string "client_interpreter_required"
    t.string "client_language_required"
    t.string "referral_form_type"
    t.string "rs_office_name"
    t.string "client_rebuttal_needed"
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

  create_table "ahoy_events", force: :cascade do |t|
    t.bigint "visit_id"
    t.bigint "user_id"
    t.string "name"
    t.jsonb "properties"
    t.datetime "time"
    t.index "properties jsonb_path_ops", name: "index_ahoy_events_on_properties_jsonb_path_ops", using: :gin
    t.index ["name", "time"], name: "index_ahoy_events_on_name_and_time"
    t.index ["user_id"], name: "index_ahoy_events_on_user_id"
    t.index ["visit_id"], name: "index_ahoy_events_on_visit_id"
  end

  create_table "ahoy_visits", force: :cascade do |t|
    t.string "visit_token"
    t.string "visitor_token"
    t.bigint "user_id"
    t.string "ip"
    t.text "user_agent"
    t.text "referrer"
    t.string "referring_domain"
    t.text "landing_page"
    t.string "browser"
    t.string "os"
    t.string "device_type"
    t.string "country"
    t.string "region"
    t.string "city"
    t.string "utm_source"
    t.string "utm_medium"
    t.string "utm_term"
    t.string "utm_content"
    t.string "utm_campaign"
    t.string "app_version"
    t.string "os_version"
    t.string "platform"
    t.datetime "started_at"
    t.index ["user_id"], name: "index_ahoy_visits_on_user_id"
    t.index ["visit_token"], name: "index_ahoy_visits_on_visit_token", unique: true
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

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "message"
    t.string "address"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address_2"
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
