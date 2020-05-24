(:Mostrar el título y el número de autores que tiene cada título en etiquetas diferentes.:)
(:
for $x in doc("books.xml")/bookstore/book
return <libro>{$x/title}
       <numAutores>{count($x/author)}</numAutores>
       </libro>
:)

(:
for $x in doc("books.xml")/bookstore/book
return <libro>{$x/title/text()},({count($x/author)})</libro>
:)
<libros>
{
for $x in doc("books.xml")/bookstore/book
return <libro autores="{count($x/author)}">{$x/title/text()}</libro>
}
</libros>