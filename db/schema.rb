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

ActiveRecord::Schema.define(version: 20190215210441) do

  create_table "medications", force: :cascade do |t|
    t.string   "name"
    t.string   "dosage_amount"
    t.string   "dosage_form"
    t.text     "usage_instructions"
    t.string   "prescribing_doctor"
    t.boolean  "currently_taking"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "ailment_treated"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "reactions", force: :cascade do |t|
    t.string   "title"
    t.text     "reaction_detail"
    t.string   "medication_name"
    t.string   "dosage_amount"
    t.text     "usage_instructions"
    t.integer  "medication_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.date   "birth_date"
    t.text   "known_allergies"
  end

end
