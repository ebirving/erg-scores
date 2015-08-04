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

ActiveRecord::Schema.define(version: 20150803233841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "rowers", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "name"
    t.string "gender"
    t.string "weight_class"
    t.date   "birthday"
    t.string "age_group"
  end

  create_table "scores", force: :cascade do |t|
    t.integer  "interval_number"
    t.integer  "minutes"
    t.float    "seconds"
    t.integer  "distance"
    t.string   "split"
    t.integer  "spm"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "workout_id"
    t.integer  "rower_id"
  end

  add_index "scores", ["workout_id"], name: "index_scores_on_workout_id", using: :btree

  create_table "workouts", force: :cascade do |t|
    t.string "training_band"
    t.text   "description"
    t.string "intensity"
    t.string "name"
  end

  add_foreign_key "scores", "workouts"
end
