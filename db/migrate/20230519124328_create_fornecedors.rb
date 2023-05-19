class CreateFornecedors < ActiveRecord::Migration[6.1]
  def change
    create_table :fornecedors do |t|
      t.string :nome
      t.integer :telefone
      t.string :email
      t.string :cnpj_cpf
      t.string :endereco
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
