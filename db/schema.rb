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

ActiveRecord::Schema.define(version: 2018_07_31_015516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "Bancos", force: :cascade do |t|
    t.integer "IdBanco"
    t.text "NombreBanco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ConexionFundacionTipo", force: :cascade do |t|
    t.integer "IdFundacion"
    t.integer "IdTipoDonacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Donacion", force: :cascade do |t|
    t.integer "IdDonar"
    t.integer "IdTipoDonacion"
    t.integer "IdUsuarioDonador"
    t.integer "IdFundacionaDonar"
    t.text "DireccionReclamarDonacion"
    t.text "Latituddirreclamardonacion"
    t.text "LongitudDirReclamarDonacion"
    t.datetime "TiempoEsperaDonador"
    t.text "EstadoDonacion"
    t.decimal "MontoDonar"
    t.text "ImagenConsignacion"
    t.integer "IdObjeto"
    t.text "DescripcionObjeto"
    t.datetime "TiempoVoluntariado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Fundaciones", force: :cascade do |t|
    t.integer "IdFundacion"
    t.text "NombreFundacion"
    t.text "NitFundacion"
    t.text "TipoFundacion"
    t.datetime "FechaCreacion"
    t.text "DirFundacion"
    t.text "LatDirFundacion"
    t.text "LonDirFundacion"
    t.integer "IdUsuarioEncargado"
    t.decimal "TelFundacion"
    t.decimal "CelFundacion"
    t.text "CorreoFundacion"
    t.text "Estado"
    t.text "ImagenLogo"
    t.text "TipoCuenta"
    t.text "NumeroCuenta"
    t.integer "IdBanco"
    t.text "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "IdFundaciones_id"
    t.bigint "IdFundacion_id"
    t.index ["IdFundacion_id"], name: "index_Fundaciones_on_IdFundacion_id"
    t.index ["IdFundaciones_id"], name: "index_Fundaciones_on_IdFundaciones_id"
  end

  create_table "Objeto", force: :cascade do |t|
    t.integer "IdObjeto"
    t.text "NombreObjeto"
    t.text "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "TipoDonacion", force: :cascade do |t|
    t.integer "IdTipoDonacion"
    t.text "Desc_Tipo_Donacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "Objeto", force: :cascade do |t|
    t.integer "IdObjeto"
    t.text "Nombre_Objeto"
    t.text "Descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "TipoDonacion", force: :cascade do |t|
    t.integer "IdTipoDonacion"
    t.text "Desc_Tipo_Donacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "Idusuarios"
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

end
