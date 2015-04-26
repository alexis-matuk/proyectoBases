json.array!(@establecimiento_inspectors) do |establecimiento_inspector|
  json.extract! establecimiento_inspector, :id, :nombre, :fecha
  json.url establecimiento_inspector_url(establecimiento_inspector, format: :json)
end
