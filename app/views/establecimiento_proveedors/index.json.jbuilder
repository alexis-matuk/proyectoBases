json.array!(@establecimiento_proveedors) do |establecimiento_proveedor|
  json.extract! establecimiento_proveedor, :id
  json.url establecimiento_proveedor_url(establecimiento_proveedor, format: :json)
end
