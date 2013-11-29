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

ActiveRecord::Schema.define(version: 20131129040251) do

  create_table "books", force: true do |t|
    t.string   "book_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
  end

  create_table "contracts", force: true do |t|
    t.datetime "date"
    t.datetime "enrollment_date"
    t.datetime "final_class_date"
    t.datetime "final_interim_test"
    t.decimal  "hours"
    t.decimal  "amount_paid"
    t.decimal  "paid_hours"
    t.decimal  "used_hours"
    t.decimal  "remaining_hours"
    t.boolean  "new_or_renew"
    t.datetime "dt_date"
    t.datetime "dc_date"
    t.decimal  "dt_amount"
    t.string   "est_class_schedule"
    t.decimal  "hrs_per_week"
    t.decimal  "chart_rate"
    t.decimal  "tuition"
    t.decimal  "dsc"
    t.text     "program_explanation"
    t.decimal  "total_money"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "contracts", ["student_id"], name: "index_contracts_on_student_id"

  create_table "contracts_guardians", force: true do |t|
    t.integer  "contract_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "nickname"
    t.datetime "birthdate"
    t.string   "ssn"
    t.string   "ethnicity"
    t.datetime "interview_date"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "home_phone"
    t.string   "cell_phone"
    t.string   "email"
    t.text     "career_goals"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
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

  create_table "guardians_siblings", force: true do |t|
    t.integer  "sibling_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guardians_students", force: true do |t|
    t.integer  "student_id"
    t.integer  "guardian_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", force: true do |t|
    t.decimal  "amount"
    t.boolean  "partial_payment"
    t.datetime "date"
    t.string   "type"
    t.integer  "paymentable_id"
    t.string   "paymentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resources", force: true do |t|
    t.string   "title"
    t.string   "subject"
    t.integer  "pages"
    t.integer  "publication_year"
    t.datetime "purchase_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", force: true do |t|
    t.string   "name"
    t.string   "contact"
    t.string   "contact_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools_students", force: true do |t|
    t.integer  "school_id"
    t.integer  "student_id"
    t.string   "dates_attended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", force: true do |t|
    t.decimal  "hours"
    t.datetime "date"
    t.string   "type"
    t.integer  "student_id"
    t.integer  "tutor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["student_id"], name: "index_sessions_on_student_id"
  add_index "sessions", ["tutor_id"], name: "index_sessions_on_tutor_id"

  create_table "siblings", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "siblings_students", force: true do |t|
    t.integer  "sibling_id"
    t.integer  "student_id"
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
