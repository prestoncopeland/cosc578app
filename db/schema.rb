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

ActiveRecord::Schema.define(version: 20131118232540) do

  create_table "books", force: true do |t|
    t.string   "book_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  create_table "guardians", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "work_phone"
    t.string   "home_phone"
    t.string   "email"
    t.string   "profession"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guardians_students", force: true do |t|
    t.integer  "student_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "nickname"
    t.datetime "birthdate"
    t.string   "grade"
    t.string   "ethnicity"
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.string   "email"
    t.string   "phone"
    t.boolean  "is_active?"
    t.text     "program_goals"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
