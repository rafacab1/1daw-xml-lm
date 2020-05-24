(:Mostrar los títulos en una tabla de HTML.:)
<table>
<th>Título</th>
{
for $x in doc("books.xml")/bookstore/book/title
return <tr>
          <td>{$x/text()}</td>
       </tr>
}
</table>