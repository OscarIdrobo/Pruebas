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

ActiveRecord::Schema.define(version: 2018_08_04_021815) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bancos", force: :cascade do |t|
    t.text "NombreBanco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "conexionfundaciontipos", force: :cascade do |t|
    t.integer "Fundacion_id"
    t.integer "TipoDonacion_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "donaciones", force: :cascade do |t|
    t.integer "TipoDonacion_id"
    t.integer "Usuario_id"
    t.integer "Fundacion_id"
    t.integer "Objeto_id"
    t.text "DireccionReclamarDonacion"
    t.text "Latituddirreclamardonacion"
    t.text "LongitudDirReclamarDonacion"
    t.datetime "TiempoEsperaDonador"
    t.text "EstadoDonacion"
    t.decimal "MontoDonar"
    t.text "ImagenConsignacion"
    t.text "DescripcionObjeto"
    t.datetime "TiempoVoluntariado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fundaciones", force: :cascade do |t|
    t.integer "Banco_id"
    t.integer "Usuario_id"
    t.text "NombreFundacion"
    t.text "NitFundacion"
    t.datetime "FechaCreacion"
    t.text "DirFundacion"
    t.text "LatDirFundacion"
    t.text "LonDirFundacion"
    t.decimal "TelFundacion"
    t.decimal "CelFundacion"
    t.text "CorreoFundacion"
    t.text "ImagenLogo"
    t.text "NumeroCuenta"
    t.text "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "objetos", force: :cascade do |t|
    t.text "Nombre_Objeto"
    t.text "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tipoDonaciones", force: :cascade do |t|
    t.text "Desc_Tipo_Donacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.text "Nombre_usuario"
    t.text "Apellido_usuario"
    t.text "Tipo_documento"
    t.text "Documento"
    t.text "Cel_personal"
    t.text "Correo_personal"
    t.text "Contrasena"
    t.text "Direccion_residencia"
    t.text "Latitud_dir_residencia"
    t.text "Longitud_dir_encargado"
    t.datetime "Fecha_creacion"
    t.text "Estado"
    t.text "Rol"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "conexionfundaciontipos", "\"fundaciones\"", column: "Fundacion_id"
  add_foreign_key "conexionfundaciontipos", "\"tipoDonaciones\"", column: "TipoDonacion_id"
  add_foreign_key "donaciones", "\"fundaciones\"", column: "Fundacion_id"
  add_foreign_key "donaciones", "\"objetos\"", column: "Objeto_id"
  add_foreign_key "donaciones", "\"tipoDonaciones\"", column: "TipoDonacion_id"
  add_foreign_key "donaciones", "\"usuarios\"", column: "Usuario_id"
  add_foreign_key "fundaciones", "\"bancos\"", column: "Banco_id"
  add_foreign_key "fundaciones", "\"usuarios\"", column: "Usuario_id"
end
