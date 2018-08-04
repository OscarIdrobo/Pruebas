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

ActiveRecord::Schema.define(version: 2018_08_04_003957) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nombre_id"
  end

  create_table "administradors_servidors", id: false, force: :cascade do |t|
    t.integer "administrador_id"
    t.integer "servidor_id"
  end

  create_table "direccion_ips", force: :cascade do |t|
    t.string "nombre", limit: 25, null: false
    t.string "apellidos", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "servidor_id"
  end

  create_table "nombres", force: :cascade do |t|
    t.string "nombre", limit: 25, null: false
    t.string "apellidos", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servidors", force: :cascade do |t|
    t.string "nombre", limit: 50, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "administradors_servidors", "administradors"
  add_foreign_key "administradors_servidors", "servidors"
end
