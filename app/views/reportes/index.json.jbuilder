json.array!(@reportes) do |reporte|
  json.extract! reporte, :id, :fecha, :clientes, :ingreso
  json.url reporte_url(reporte, format: :json)
end
