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

ActiveRecord::Schema.define(version: 20150601224104) do

  create_table "events", force: :cascade do |t|
    t.string   "event_name"
    t.string   "event_type"
    t.text     "event_summary"
    t.text     "event_band_info"
    t.text     "event_info"
    t.string   "event_city"
    t.string   "event_state"
    t.string   "event_country"
    t.string   "event_date"
    t.string   "event_contact_name"
    t.string   "event_contact_email"
    t.string   "event_contact_phone"
    t.string   "company_name"
    t.string   "company_info"
    t.string   "company_city"
    t.string   "company_state"
    t.string   "company_country"
    t.text     "event_description"
    t.boolean  "food"
    t.boolean  "drink"
    t.boolean  "tips"
    t.text     "compensation_details"
    t.string   "number_of_bands_needed"
    t.string   "event_time"
    t.string   "company_facebook"
    t.string   "company_twitter"
    t.string   "company_instagram"
    t.boolean  "electronic"
    t.boolean  "rock"
    t.boolean  "pop"
    t.boolean  "indie"
    t.boolean  "jam"
    t.boolean  "metal"
    t.boolean  "country_music"
    t.boolean  "hip_hop"
    t.boolean  "rap"
    t.boolean  "folk"
    t.boolean  "jazz"
    t.boolean  "blue_grass"
    t.boolean  "blues"
    t.boolean  "alternative"
    t.boolean  "christian"
    t.boolean  "comedy"
    t.boolean  "latin"
    t.boolean  "rb"
    t.boolean  "world"
    t.boolean  "amaericana"
    t.boolean  "classical"
    t.boolean  "spoken_word"
    t.boolean  "reggae"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "event_venue"
    t.string   "event_address"
    t.string   "event_video"
    t.integer  "user_id"
  end

  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",             default: false
    t.string   "activation_digest"
    t.boolean  "activated",         default: false
    t.datetime "activated_at"
    t.string   "reset_digest"
    t.datetime "reset_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
