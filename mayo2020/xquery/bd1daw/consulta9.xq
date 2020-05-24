(:Mostrar la suma total de los precios de los libros con la etiqueta "total".:)
let $x := sum(doc("books.xml")/bookstore/book/price)
return <total>{$x}</total>