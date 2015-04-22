json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :email, :telefono, :representante
  json.url proveedor_url(proveedor, format: :json)
end
