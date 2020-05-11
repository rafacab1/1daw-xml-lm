(:Mostrar los libros ordenados primero por "category" y luego por "title" en una sola consulta.:)
for $x in doc("books.xml")/bookstore/book
order by $x/@category, $x/title
return
  $x/title
  (:Falta:)