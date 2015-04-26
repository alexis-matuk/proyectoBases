json.array!(@ingrediente_platillos) do |ingrediente_platillo|
  json.extract! ingrediente_platillo, :id
  json.url ingrediente_platillo_url(ingrediente_platillo, format: :json)
end
