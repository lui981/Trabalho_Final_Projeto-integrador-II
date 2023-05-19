# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2023_05_19_133058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clientes", force: :cascade do |t|
    t.string "nome"
    t.string "cpf"
    t.string "endereco"
    t.string "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "fornecedors", force: :cascade do |t|
    t.string "nome"
    t.integer "telefone"
    t.string "email"
    t.string "cnpj_cpf"
    t.string "endereco"
    t.string "cidade"
    t.string "estado"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "nome"
    t.string "tipo"
    t.integer "quantidade"
    t.integer "estoque"
    t.float "preco"
    t.date "data_validade"
    t.bigint "fornecedor_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fornecedor_id"], name: "index_medicamentos_on_fornecedor_id"
  end

  create_table "receita", force: :cascade do |t|
    t.string "paciente"
    t.string "dosagem"
    t.bigint "medicamento_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["medicamento_id"], name: "index_receita_on_medicamento_id"
  end

  create_table "vendas", force: :cascade do |t|
    t.date "data"
    t.decimal "valor"
    t.bigint "medicamento_id", null: false
    t.bigint "cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["medicamento_id"], name: "index_vendas_on_medicamento_id"
  end

  add_foreign_key "medicamentos", "fornecedors"
  add_foreign_key "receita", "medicamentos"
  add_foreign_key "vendas", "clientes"
  add_foreign_key "vendas", "medicamentos"
end
