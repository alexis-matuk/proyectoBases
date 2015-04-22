json.array!(@platillos) do |platillo|
  json.extract! platillo, :id, :nombre, :descripcion, :precio
  json.url platillo_url(platillo, format: :json)
end
