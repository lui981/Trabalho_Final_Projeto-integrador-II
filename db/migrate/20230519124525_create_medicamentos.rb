class CreateMedicamentos < ActiveRecord::Migration[6.1]
  def change
    create_table :medicamentos do |t|
      t.string :nome
      t.string :tipo
      t.integer :quantidade
      t.integer :estoque
      t.float :preco
      t.date :data_validade
      t.references :fornecedor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
