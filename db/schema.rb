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

ActiveRecord::Schema.define(version: 2018_11_14_115057) do

  create_table "mrps", force: :cascade do |t|
    t.string "a1"
    t.string "a2"
    t.string "a3"
    t.string "a4"
    t.string "a5"
    t.string "a6"
    t.string "a7"
    t.string "a8"
    t.string "a9"
    t.string "a10"
    t.string "a11"
    t.string "b1"
    t.string "b2"
    t.string "b3"
    t.string "b4"
    t.string "b5"
    t.string "b6"
    t.string "b7"
    t.string "b8"
    t.string "b9"
    t.string "b10"
    t.string "b11"
    t.integer "c2"
    t.integer "c3"
    t.integer "est"
    t.integer "lt"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
