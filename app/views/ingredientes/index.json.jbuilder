json.array!(@ingredientes) do |ingrediente|
  json.extract! ingrediente, :id, :nombre, :precio
  json.url ingrediente_url(ingrediente, format: :json)
end
