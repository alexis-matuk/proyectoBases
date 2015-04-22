json.array!(@empleados) do |empleado|
  json.extract! empleado, :id, :nombre, :cargo, :contratacion, :salario
  json.url empleado_url(empleado, format: :json)
end
