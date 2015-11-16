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

ActiveRecord::Schema.define(version: 20151113192038) do

  create_table "expenses", force: :cascade do |t|
    t.string   "title"
    t.decimal  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "names", force: :cascade do |t|
    t.string   "Phone_number"
    t.string   "Email_address"
    t.string   "How_did_you_here_about_our_open_house"
    t.boolean  "Are_you_working_with_a_Realtor"
    t.string   "Realtors_name_and_contact_information"
    t.string   "Would_you_like_to_be_emailed_new_properties"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
  end

  create_table "open_houses", force: :cascade do |t|
    t.string   "Name"
    t.string   "Phone_number"
    t.string   "Email_address"
    t.string   "How_did_you_here_about_our_open_house"
    t.boolean  "Are_you_working_with_a_Realtor"
    t.string   "Realtors_name_and_contact_information"
    t.string   "Would_you_like_to_be_emailed_new_properties"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
