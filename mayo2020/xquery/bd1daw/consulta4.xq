(:Mostrar los años de publicación, primero con "for" y luego con "let" para comprobar la diferencia entre ellos. Etiquetar la salida con "publicacion":)

(:
for $x in doc("books.xml")/bookstore/book
return 
  <publicacion>{$x/year}</publicacion>
:)

let $x := doc("books.xml")/bookstore/book/year
return <publicacion>{$x}</publicacion>