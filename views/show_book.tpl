<h1>{{book.title}} by {{book.author}}</h1>
<h2>{{book.year}}</h2>
<p>{{book.description}}</p>
<h3>Checked Out by</h3>
<ul>
%for username in book.checked_out:
  <li>{{username}}</li>
%end
</ul>
<form method="POST" action="/books/{{book.id}}/check_out">
  <input type='text' placeholder="Username" name="username" />
  <br />
  <input type="submit" value="Check out Book" />
</form>


<form method='POST' action='/books/{{book.id}}'>
  <input type="hidden" name="_method" value="PUT" />
  <input type='text' placeholder="Book Title" name="title" />
  <br />
  <input type='text' placeholder="Book Publication Year" name="year" />
  <br />
  <input type='text' placeholder="Book Author" name="author" />
  <br />
  <textarea type='text' placeholder="Book Description" name="desc">
  </textarea>
  <br />
  <input type="submit" value="Edit Book" />
</form>


<form method="GET" action="/books/{{book.id}}">
  <input type="hidden" name="_method" value="DELETE" />
  <input type="submit" value="Delete Book" />
</form>

<a href='/books'>GO BACK</a>
