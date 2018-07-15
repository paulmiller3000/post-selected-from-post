# Post Selected from Post
This was a real-world problem I recently had to solve. 

Use case: User enters a string in a search box on a PHP page. On submit, the page queries the database and then posts results to a table on the same page. User then selects a single record with a radio button and needs to post only that record to a different PHP page. The second page does not have access to the database.

Working demo at https://postfrompost.paulmiller3000.com.

## Getting Started
Create a new database and user. Be sure to grant your user SELECT and EXECUTE privileges on your database.

Use database-load-sample.sql to load records. 

Execute devCharacters.sql to create the stored procedure.

## Acknowledgments

* The fabulous community at StackOverflow for pushing me to problem solve and thus LEARN!
* Richard Reis' article "How to think like a programmer -- lessons in problem solving" which helped me break this problemd own into manageable steps. Link: https://medium.freecodecamp.org/how-to-think-like-a-programmer-lessons-in-problem-solving-d1d8bf1de7d2