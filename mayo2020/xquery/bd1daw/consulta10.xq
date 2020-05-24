(:Mostrar cada uno de los precios de los libros, y al final una nueva etiqueta con la suma de los precios.:)
<precios>
{
for $x in doc("books.xml")/bookstore/book/price
return $x
}
{
  let $x := sum(doc("books.xml")/bookstore/book/price) 
  return <precio_total>{$x}</precio_total>
}
{
  let $media := avg(doc("books.xml")/bookstore/book/price)
  return <media_precios>{$media}</media_precios>
}
</precios>