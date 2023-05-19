class CreateVendas < ActiveRecord::Migration[6.1]
  def change
    create_table :vendas do |t|
      t.date :data
      t.decimal :valor
      t.references :medicamento, null: false, foreign_key: true
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
