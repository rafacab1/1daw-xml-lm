(:Mostrar el precio mínimo y máximo de los libros.:)
let $x := max(doc("books.xml")/bookstore/book/price), 
    $y := min(doc("books.xml")/bookstore/book/price)
return 
<libro>
  <maximo>{$x}</maximo>
  <minimo>{$y}</minimo>
</libro>