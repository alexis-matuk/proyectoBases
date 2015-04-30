
pdf.font "Helvetica"

pdf.text "<u>Listado de Empleados", :size => 18, :spacing => 4, :align => :center, :leading => 30, :inline_format => true
pdf.text "---------------------------------------------------------------------------------------------------------------------------------------", :leading => 5


empleados = @empleados.each do |empleado|
pdf.text "Nombre: <b>#{empleado.nombre}</b>", :size => 16, :spacing => 4, :inline_format => true
pdf.text "- Cargo: #{empleado.cargo}", :spacing => 16, :size => 11, :indent_paragraphs => 18
pdf.text "- Fecha Contratación:  #{empleado.contratacion}", :spacing => 16, :size => 11, :indent_paragraphs => 18
pdf.text "- Salario: #{empleado.salario}", :spacing => 16, :size => 11, :indent_paragraphs => 18
pdf.text "- Establecimiento: #{empleado.establecimiento.id}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5
 pdf.text "---------------------------------------------------------------------------------------------------------------------------------------"
end
 
