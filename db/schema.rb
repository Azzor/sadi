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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130306183455) do

  create_table "clientes", :force => true do |t|
    t.string   "cliente",    :limit => 10
    t.string   "nombre",     :limit => 40
    t.integer  "grupo_id"
    t.string   "contacto",   :limit => 40
    t.string   "telefono",   :limit => 20
    t.string   "email",      :limit => 60
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "clientes", ["cliente"], :name => "index_clientes_on_cliente", :unique => true

  create_table "gruemps", :force => true do |t|
    t.string   "nombre",     :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "grupos", :force => true do |t|
    t.string   "nombre",     :limit => 40
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "impesps", :force => true do |t|
    t.string   "impesp",     :limit => 20
    t.integer  "impgen_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "impesps", ["impesp"], :name => "index_impesps_on_impesp", :unique => true

  create_table "impgens", :force => true do |t|
    t.string   "impgen",     :limit => 20
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "requerims", :force => true do |t|
    t.integer  "nrequerim"
    t.date     "notif_on"
    t.string   "asunto",       :limit => 100
    t.date     "venc_on"
    t.date     "resp_on"
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
    t.integer  "solicitud_id"
  end

  add_index "requerims", ["solicitud_id"], :name => "index_requerims_on_solicitud_id"

  create_table "solicituds", :force => true do |t|
    t.string   "impesp",      :limit => 20
    t.date     "per1_on"
    t.date     "per2_on"
    t.decimal  "importe",                   :precision => 12, :scale => 2
    t.date     "ingreso_on"
    t.date     "devest_on"
    t.string   "usu_socio",   :limit => 10
    t.string   "usu_gerente", :limit => 10
    t.string   "usu_senior",  :limit => 10
    t.string   "usu_junior",  :limit => 10
    t.datetime "created_at",                                               :null => false
    t.datetime "updated_at",                                               :null => false
    t.decimal  "honorarios",                :precision => 10, :scale => 0
    t.string   "factura"
    t.date     "factura_on"
    t.string   "tramite"
    t.integer  "cliente_id"
    t.string   "cliente",     :limit => 10
  end

  create_table "tramites", :force => true do |t|
    t.string   "tramite",    :limit => 20
    t.string   "descripc",   :limit => 40
    t.integer  "plazo"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "tramites", ["tramite"], :name => "index_tramites_on_tramite", :unique => true

  create_table "usuarios", :force => true do |t|
    t.string   "usuario",    :limit => 10
    t.string   "apepat",     :limit => 20
    t.string   "apemat",     :limit => 20
    t.string   "nombre",     :limit => 25
    t.string   "email",      :limit => 50
    t.string   "password",   :limit => 20
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  add_index "usuarios", ["usuario"], :name => "index_usuarios_on_usuario", :unique => true

end
