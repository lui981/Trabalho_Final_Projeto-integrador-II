json.extract! medicamento, :id, :nome, :tipo, :quantidade, :estoque, :preco, :data_validade, :fornecedor_id, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
