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

ActiveRecord::Schema.define(version: 20150425192149) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "empleados", force: true do |t|
    t.string   "nombre"
    t.string   "cargo"
    t.date     "contratacion"
    t.float    "salario"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "establecimiento_id"
  end

  create_table "establecimientos", force: true do |t|
    t.string   "direccion"
    t.integer  "telefono"
    t.integer  "codpost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
