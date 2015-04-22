json.array!(@establecimientos) do |establecimiento|
  json.extract! establecimiento, :id, :direccion, :telefono, :codpost
  json.url establecimiento_url(establecimiento, format: :json)
end
