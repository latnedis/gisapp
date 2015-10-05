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

ActiveRecord::Schema.define(version: 20151005125605) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.string   "photo"
    t.string   "description"
    t.string   "job"
    t.string   "birth"
    t.string   "death"
    t.string   "status"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "momuments", force: :cascade do |t|
    t.string   "code"
    t.string   "alternative_name"
    t.string   "culture"
    t.string   "monument_type"
    t.string   "description"
    t.string   "length"
    t.string   "width"
    t.string   "approximate_area"
    t.string   "photo"
    t.string   "architectural_style"
    t.string   "technical_condition"
    t.string   "material"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "researches", force: :cascade do |t|
    t.string   "date"
    t.string   "code"
    t.string   "research_type"
    t.string   "description"
    t.string   "area"
    t.integer  "author_id"
    t.integer  "momument_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "researches", ["author_id"], name: "index_researches_on_author_id", using: :btree
  add_index "researches", ["momument_id"], name: "index_researches_on_momument_id", using: :btree

  add_foreign_key "researches", "authors"
  add_foreign_key "researches", "momuments"
end
