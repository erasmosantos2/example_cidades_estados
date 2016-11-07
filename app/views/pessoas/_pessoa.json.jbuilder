json.extract! pessoa, :id, :nome, :cidade_id, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)