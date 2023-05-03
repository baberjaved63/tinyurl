Task: Build a TinyURL clone in Ruby on Rails.

- It should allow users to submit a URL which will then be shortened and can be shared.
- When users click on the short URL they are redirected to the long URL.
- Track the IP address of each visit to a URL.
- Here are some suggested routes but you are free to improve and/or add to them.
/ # home page where user can enter a URL
/:token # redirects to full URL
/:token/info # info about URL and visitor count

You should use Rails 6.x or 5.x and a relational database (we use Postgres but you can use
whatever you are familiar with).

Try not to spend more than 90 minutes on this. We value your time and don't expect a finished
polished product. Focus on the controllers and models rather than making it look pretty.
