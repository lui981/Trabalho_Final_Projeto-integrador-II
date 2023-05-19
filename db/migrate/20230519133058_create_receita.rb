class CreateReceita < ActiveRecord::Migration[6.1]
  def change
    create_table :receita do |t|
      t.string :paciente
      t.string :dosagem
      t.references :medicamento, null: false, foreign_key: true

      t.timestamps
    end
  end
end
