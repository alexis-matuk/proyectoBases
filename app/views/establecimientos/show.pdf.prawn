
pdf.font "Helvetica"

@establecimientos.each do |establecimiento|
pdf.text "Dirección: #{establecimiento.direccion}", :size => 16, :style => :bold, :spacing => 4
pdf.text "Telefono: #{establecimiento.telefono}", :spacing => 16
end
