# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
    **Sinatra framework was used along with the Corneal gem for the           scaffold**

- [x] Use ActiveRecord for storing information in a database
    **I used ActiveRecord for its methods the way it has been explained in    the curriculum**

- [x] Include more than one model class (e.g. User, Post, Category)
    **There is a User model and a Gear model.**

- [x] Include at least one has_many relationship on your User model (e.g.         User has_many Posts)
    **User `has_many` Gears**

- [x] Include at least one belongs_to relationship on another model (e.g.         Post belongs_to User)
    **Gear `belongs_to` User**

- [x] Include user accounts with unique login attribute (username or email)
    **A User must signup with a unique username that no other User has.**

- [x] Ensure that the belongs_to resource has routes for Creating, Reading,       Updating and Destroying
    **The Gear model has the complete CRUD functionality.**

- [x] Ensure that users can't modify content created by other users
    **A User can only Create, Update and Delete their own content and this    can only be done if they are logged in.**

- [x] Include user input validations
    **A User must sign in using their username and password.**

- [x] BONUS - not required - Display validation failures to user with error       message (example form URL e.g. /posts/new)
    **Simple custom errors have been implemented.**

- [x] Your README.md includes a short description, install instructions, a        contributors guide and a link to the license for your code.
    **ReadMe contains description, instructions, license link and             contributors covenent.**

Confirm
- [x] You have a large number of small Git commits
    **Around 30 commits**

- [x] Your commit messages are meaningful
    **Messages pertain to what was done within that commit.**

- [x] You made the changes in a commit that relate to the commit message
    **Messages pertain the the actual commit.**

- [x] You don't include changes in a commit that aren't related to the            commit message
    **Commits were made that only match the message.**