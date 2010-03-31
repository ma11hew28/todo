== Welcome to TODO

TODO is a simple task-management system built with Ruby on Rails.
You can try it out here: http://todo-fun.heroku.com/


Features:

  * Create a user account with just my email address (no password required).
  * Add a todo that includes a:
      - title (required),
      - description (optional),
      - due-date (optional).
  * Drag & drop to easily reorder todos.
  * Checkoff completed todos.
  * Login using only a registered email address.
  * Remember me by storing my email address in a browser cookie.


Installation:

  1. Download:
    - Clone/fork todo.
  
  2. Install:
    - Install Ruby & Rails.
    - Install a database engine, preferably the sqlite3-ruby gem.
    - If you don't use SQLite, edit todo/config/database.yml for your database.
    - Enter the following command to create a database and install the schema:
      rake db:migrate

  3. Run:
    - Enter the command: ruby script/server
    - Navigate to http://localhost:3000/ in your browser.


Developers:

  * Matt Di Pasquale - http://www.mattdipasquale.com/