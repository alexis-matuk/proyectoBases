
pdf.font "Helvetica"

pdf.text "Listado de Establecimientos"

establecimientos = @establecimientos.each do |establecimiento|
pdf.text "| Dirección: #{establecimiento.direccion}", :size => 16, :style => :bold, :spacing => 4
pdf.text "| Telefono: #{establecimiento.telefono}", :spacing => 16
pdf.text "| Código Postal:  #{establecimiento.telefono}", :spacing => 16
end
 