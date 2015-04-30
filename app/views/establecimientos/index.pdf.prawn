
pdf.font "Helvetica"

pdf.text "<u>Listado de Establecimientos", :size => 18, :spacing => 4, :align => :center, :leading => 30, :inline_format => true
pdf.text "---------------------------------------------------------------------------------------------------------------------------------------", :leading => 5


establecimientos = @establecimientos.each do |establecimiento|
pdf.text "Dirección: <b>#{establecimiento.direccion}</b>", :size => 16, :spacing => 4, :inline_format => true
pdf.text "- Telefono: #{establecimiento.telefono}", :spacing => 16, :size => 11, :indent_paragraphs => 18
pdf.text "- Código Postal:  #{establecimiento.codpost}", :spacing => 16, :size => 11, :indent_paragraphs => 18, :leading => 5

 pdf.text "---------------------------------------------------------------------------------------------------------------------------------------"
end
 
