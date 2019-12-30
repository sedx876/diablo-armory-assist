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

ActiveRecord::Schema.define(version: 20191230193714) do

  create_table "gears", force: :cascade do |t|
    t.string  "title"
    t.string  "character_klass"
    t.string  "helm"
    t.string  "shoulders"
    t.string  "gloves"
    t.string  "chest_armor"
    t.string  "belt"
    t.string  "pants"
    t.string  "boots"
    t.string  "bracers"
    t.string  "amulet"
    t.string  "ring_1"
    t.string  "ring_2"
    t.string  "weapon"
    t.string  "offhand"
    t.text    "gem_notes"
    t.text    "kanais_cube"
    t.text    "active_skills"
    t.text    "passive_skills"
    t.text    "general_build_notes"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
  end

end
