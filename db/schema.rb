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

ActiveRecord::Schema.define(version: 20180215130251) do

  create_table "basicpays", force: :cascade do |t|
    t.float    "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "investments", force: :cascade do |t|
    t.string   "name"
    t.float    "amount"
    t.integer  "month"
    t.integer  "basicpay_id"
    t.float    "total"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "investments", ["basicpay_id"], name: "index_investments_on_basicpay_id"

  create_table "loans", force: :cascade do |t|
    t.string   "name"
    t.float    "bill"
    t.integer  "month"
    t.integer  "basicpay_id"
    t.float    "balance"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "loans", ["basicpay_id"], name: "index_loans_on_basicpay_id"

  create_table "night_shifts", force: :cascade do |t|
    t.string   "date"
    t.float    "claim"
    t.integer  "basicpay_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "night_shifts", ["basicpay_id"], name: "index_night_shifts_on_basicpay_id"

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
    t.string   "username"
    t.string   "mobile"
    t.string   "gender"
    t.date     "dob"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "weekends", force: :cascade do |t|
    t.string   "date"
    t.float    "claim"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
