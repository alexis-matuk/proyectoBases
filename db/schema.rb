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

ActiveRecord::Schema.define(version: 20150427003221) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "empleados", force: true do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.date     "contratacion"
    t.float    "salario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "establecimiento_id"
  end

  create_table "establecimiento_inspectors", force: true do |t|
    t.string   "nombre"
    t.date     "fecha"
    t.integer  "establecimiento_id"
    t.integer  "proveedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "establecimiento_inspectors", ["establecimiento_id"], name: "index_establecimiento_inspectors_on_establecimiento_id", using: :btree
  add_index "establecimiento_inspectors", ["proveedor_id"], name: "index_establecimiento_inspectors_on_proveedor_id", using: :btree

  create_table "establecimiento_platillos", force: true do |t|
    t.date     "introduccion"
    t.integer  "establecimiento_id"
    t.integer  "platillo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "establecimiento_platillos", ["establecimiento_id"], name: "index_establecimiento_platillos_on_establecimiento_id", using: :btree
  add_index "establecimiento_platillos", ["platillo_id"], name: "index_establecimiento_platillos_on_platillo_id", using: :btree

  create_table "establecimiento_proveedors", force: true do |t|
    t.integer  "establecimiento_id"
    t.integer  "proveedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "establecimiento_proveedors", ["establecimiento_id"], name: "index_establecimiento_proveedors_on_establecimiento_id", using: :btree
  add_index "establecimiento_proveedors", ["proveedor_id"], name: "index_establecimiento_proveedors_on_proveedor_id", using: :btree

  create_table "establecimientos", force: true do |t|
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "codpost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ingrediente_platillos", force: true do |t|
    t.integer  "ingrediente_id"
    t.integer  "platillo_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ingrediente_platillos", ["ingrediente_id"], name: "index_ingrediente_platillos_on_ingrediente_id", using: :btree
  add_index "ingrediente_platillos", ["platillo_id"], name: "index_ingrediente_platillos_on_platillo_id", using: :btree

  create_table "ingredientes", force: true do |t|
    t.string   "nombre"
    t.float    "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "proveedor_id"
  end

  create_table "inspectors", force: true do |t|
    t.string   "institucion"
    t.string   "departamento"
    t.integer  "telefono"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "platillos", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.float    "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "receta"
  end

  create_table "proveedors", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.integer  "telefono"
    t.string   "representante"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reportes", force: true do |t|
    t.datetime "fecha"
    t.integer  "clientes"
    t.float    "ingreso"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "establecimiento_id"
  end

end
