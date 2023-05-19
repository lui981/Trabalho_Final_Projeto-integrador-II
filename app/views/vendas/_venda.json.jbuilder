json.extract! venda, :id, :data, :valor, :medicamento_id, :cliente_id, :created_at, :updated_at
json.url venda_url(venda, format: :json)
