(:Mostrar el título del libro, su precio y su precio con el IVA incluido, cada uno con su propia etiqueta. Ordénalos por precio con IVA:)
for $x in doc("books.xml")/bookstore/book
return 
  <libro>
    <titulo>{$x/title}</titulo>
    <precio>{$x/price}</precio>
    <precioiva>{$x/price * 1.21}</precioiva>
  </libro>