# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140923163402) do

  create_table "events", force: true do |t|
    t.date     "event_date"
    t.string   "event_title",                limit: 256
    t.text     "event_description"
    t.string   "place_event",                limit: 256
    t.text     "agenda_event"
    t.string   "picture_event"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "picture_event_file_name"
    t.string   "picture_event_content_type"
    t.integer  "picture_event_file_size"
    t.datetime "picture_event_updated_at"
  end

  create_table "people", force: true do |t|
    t.string   "nit",                  limit: 32
    t.string   "names",                limit: 128
    t.string   "last_name",            limit: 128
    t.string   "last_name_married",    limit: 128
    t.date     "born_date"
    t.string   "profession_id",        limit: 128
    t.string   "career_title",         limit: 128
    t.string   "gender",               limit: 32
    t.string   "status",               limit: 128
    t.string   "personal_mail",        limit: 128
    t.string   "home_phone",           limit: 32
    t.string   "mobile",               limit: 32
    t.string   "facebook",             limit: 256
    t.string   "linkedin",             limit: 256
    t.string   "twitter",              limit: 256
    t.string   "google",               limit: 256
    t.string   "picture"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "last_date_employee"
    t.text     "resume"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.string   "enterprise_name",      limit: 128
    t.string   "contact_name",         limit: 128
    t.string   "address",              limit: 128
    t.string   "location",             limit: 128
    t.integer  "city_id"
    t.integer  "country_id"
    t.string   "postal_code",          limit: 32
    t.string   "phone_office",         limit: 32
    t.string   "fax",                  limit: 32
    t.string   "url"
    t.integer  "industry_id"
    t.text     "object_enterprise"
    t.boolean  "register_condition1"
    t.boolean  "register_condition2"
    t.boolean  "register_condition3"
    t.boolean  "register_condition4"
    t.boolean  "register_condition5"
    t.boolean  "register_condition6"
    t.boolean  "register_condition7"
    t.boolean  "register_condition8"
    t.boolean  "is_enterprise"
  end

  create_table "professional_upgrades", force: true do |t|
    t.integer  "user_id"
    t.string   "year",           limit: 4
    t.string   "institution",    limit: 256
    t.text     "upgrade"
    t.string   "academic_title", limit: 256
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professions", force: true do |t|
    t.string   "name",       limit: 128, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professions", ["name"], name: "index_professions_on_name", unique: true

  create_table "relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "person_id"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_events", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_admin"
    t.boolean  "is_enterprise"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
