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

ActiveRecord::Schema.define(version: 2018_09_29_024612) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "container_histories", force: :cascade do |t|
    t.integer "sensor_value"
    t.integer "capacity_percentage"
    t.bigint "container_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["container_id"], name: "index_container_histories_on_container_id"
  end

  create_table "containers", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "location"
    t.string "state"
    t.decimal "lat", precision: 10, scale: 8
    t.decimal "long", precision: 11, scale: 9
    t.integer "last_sensor"
    t.integer "high_sensor"
    t.integer "low_sensor"
    t.integer "high_capacity"
    t.integer "low_capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "contact_sensor_at"
    t.string "sensor_token"
    t.index ["sensor_token"], name: "index_containers_on_sensor_token", unique: true
  end

  add_foreign_key "container_histories", "containers"
end
