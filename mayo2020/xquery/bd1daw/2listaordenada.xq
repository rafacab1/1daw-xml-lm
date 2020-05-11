<ul>
{
for $x in doc("books.xml")/bookstore/book/title
(:where $x/price>30:)
order by $x
return <li>{data($x)}</li>
}
</ul>