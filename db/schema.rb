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

ActiveRecord::Schema.define(version: 20141203071256) do

  create_table "devise_usage_logs", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "user_ip"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "action"
  end

  add_index "devise_usage_logs", ["user_id"], name: "index_devise_usage_logs_on_user_id", using: :btree

  create_table "school_contacts", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.integer  "school_id"
    t.string   "school_name"
    t.integer  "school_number"
    t.string   "web_url"
    t.string   "logo_file_name"
    t.string   "pic_file_name"
    t.string   "desc"
    t.integer  "status_id"
    t.integer  "school_stat_id"
    t.integer  "demo_flag_id"
    t.integer  "discount"
    t.integer  "discount_amt"
    t.integer  "start_month"
    t.integer  "end_month"
    t.date     "creation_date"
    t.integer  "created_by"
    t.date     "last_update"
    t.integer  "last_updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",      null: false
    t.string   "encrypted_password",     default: "",      null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,       null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,       null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_url"
    t.string   "role",                   default: "guest"
    t.string   "username",               default: "",      null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
