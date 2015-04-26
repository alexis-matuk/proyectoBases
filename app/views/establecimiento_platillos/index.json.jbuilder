json.array!(@establecimiento_platillos) do |establecimiento_platillo|
  json.extract! establecimiento_platillo, :id, :introduccion
  json.url establecimiento_platillo_url(establecimiento_platillo, format: :json)
end
