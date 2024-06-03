### Conceptual Exercise

Answer the following questions below:

- What is PostgreSQL?

PostgreSQL, often referred to as Postgres, is a powerful, open-source object-relational database system with over 30 years of active development.

- What is the difference between SQL and PostgreSQL?

SQL is the language used to interact with databases, and PostgreSQL is a database system that uses SQL to provide robust and advanced data management capabilities.

- In `psql`, how do you connect to a database?

run the 'psql' command in the terminal, then type 'psql -h hostname -p port -U username -d dbname'

- What is the difference between `HAVING` and `WHERE`?

WHERE filters individual rows before grouping.
HAVING filters groups after grouping.

- What is the difference between an `INNER` and `OUTER` join?

INNER JOIN: Returns only the rows with matching values in both tables.
OUTER JOIN:
LEFT JOIN: Returns all rows from the left table and matched rows from the right table. Unmatched rows from the left table have NULL in the right table's columns.
RIGHT JOIN: Returns all rows from the right table and matched rows from the left table. Unmatched rows from the right table have NULL in the left table's columns.
FULL JOIN: Returns all rows from both tables, with NULL in columns where there is no match.

- What is the difference between a `LEFT OUTER` and `RIGHT OUTER` join?

LEFT OUTER JOIN: Includes all rows from the left table and matching rows from the right table. Non-matching rows from the right table will show NULL in the result set.
RIGHT OUTER JOIN: Includes all rows from the right table and matching rows from the left table. Non-matching rows from the left table will show NULL in the result set.

- What is an ORM? What do they do?

An ORM (Object-Relational Mapping) is a programming technique used to convert data between incompatible systems in object-oriented programming languages. It allows developers to interact with a database using the programming language’s constructs, rather than writing raw SQL queries.

- What are some differences between making HTTP requests using AJAX 
  and from the server side using a library like `requests`?

  AJAX (Client-Side)
Environment:

AJAX is used in the context of web browsers. It allows web pages to make HTTP requests to a server without reloading the page.
Technology:

Typically involves JavaScript along with the XMLHttpRequest object or the newer Fetch API.
Can handle asynchronous requests, allowing the web page to remain interactive while waiting for a response.
Purpose:

Enhances user experience by allowing dynamic content updates, form submissions, and data retrieval without a full page refresh.
Commonly used for updating parts of a web page, submitting forms, and fetching data from APIs.
Execution Context:

Executes within the user's browser, which means it can directly interact with the Document Object Model (DOM).
Limited by the same-origin policy (although Cross-Origin Resource Sharing (CORS) can be used to relax this restriction).

requests (Server-Side)
Environment:

The requests library is used in server-side applications, typically written in Python.
Technology:

Part of Python’s ecosystem, it allows making HTTP requests in a straightforward and human-readable way.
Handles both synchronous and asynchronous requests (the latter with additional libraries like aiohttp).
Purpose:

Used for server-to-server communication, fetching data from other servers, APIs, web scraping, and more.
Ideal for backend services that need to interact with external APIs or other servers.
Execution Context:

Executes on the server, which means it can handle complex logic, data processing, and long-running tasks without affecting client-side performance.
Not limited by CORS, but can face firewall and proxy restrictions.

- What is CSRF? What is the purpose of the CSRF token?

CSRF is a significant security threat that can lead to unauthorized actions being performed on behalf of an authenticated user. CSRF tokens are a crucial defense mechanism to protect web applications from such attacks by ensuring that all state-changing requests are genuine and initiated by the authenticated user.

- What is the purpose of `form.hidden_tag()`?

The form.hidden_tag() method is a useful utility in web development frameworks like Flask-WTF, as it ensures that essential hidden fields, particularly the CSRF token, are included in forms. This enhances security and simplifies form management by automatically handling the inclusion of these fields.
