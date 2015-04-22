json.array!(@inspectors) do |inspector|
  json.extract! inspector, :id, :institucion, :departamento, :telefono
  json.url inspector_url(inspector, format: :json)
end
