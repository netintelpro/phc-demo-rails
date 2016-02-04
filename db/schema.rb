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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121006010053) do

  create_table "conditions", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "system_id"
  end

  create_table "medical_histories", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_conditions", :force => true do |t|
    t.string   "current"
    t.string   "past"
    t.string   "where"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patient_symptoms", :force => true do |t|
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "patients", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "street1"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "symptoms", :force => true do |t|
    t.text     "question"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "systems", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                      :default => "", :null => false
    t.string   "encrypted_password",         :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.string   "chest_pain"
    t.string   "heart_palpitations"
    t.string   "anemia"
    t.string   "bleeding_clotting_disorder"
    t.string   "blood_clot"
    t.string   "blood_clot_where"
    t.string   "chest_pain_discomfort"
    t.string   "coronary_artery_disease"
    t.string   "coronary_bypass"
    t.string   "heart_attack"
    t.string   "heart_surgery"
    t.string   "high_blood_pressure"
    t.string   "palpitations"
    t.string   "stroke"
    t.string   "anemia_yes"
    t.boolean  "anemia_no"
    t.boolean  "bleeding_yes"
    t.boolean  "bleeding_no"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
