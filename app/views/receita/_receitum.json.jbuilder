json.extract! receitum, :id, :paciente, :dosagem, :medicamento_id, :created_at, :updated_at
json.url receitum_url(receitum, format: :json)
