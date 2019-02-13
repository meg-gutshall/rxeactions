# Sinatra Project Checklist of Requirements

- [x] **Create a skeleton repository on Github**<br>
[https://github.com/meg-gutshall/sinatra-project](https://github.com/meg-gutshall/sinatra-project)

- [x] **What is the purpose of ActiveRecord?**<br>
ActiveRecord acts as a link between Ruby and our SQLite database. ActiveRecord takes the Ruby objects that we create in the app’s controller files and persists them to our database each time an object is saved. We’re able to do this because we use the `sinatra-activerecord` gem which extends Sinatra with ActiveRecord helper methods and Rake tasks.

- [x] **What models and associations will you have and why?**<br>
My models will be `Users`, `Medications`, and `Reactions`. `Users` will have many `Medications` and a `Medication` will belong to a `User`. `Medications` will have many `Reactions` and a `Reaction` will belong to a `Medication`. Therefore, `Users` will have many `Reactions` through `Medications` and a `Reaction` will belong to a `User` through a `Medication`.

- [x] **What validations will you use on your models?**<br>
For the user, I will first have to validate their input in the signup form and then the login form upon subsequent returns to the app. As they browse the pages, I'll have to validate that the user is logged in to decide whether or not to display certain content. Also I'll have to determine which medications and reactions are associated with the current user in order to allow them to view, edit, or delete any of the objects.

- [x] **How will you implement an authentication system?**<br>
I will take the input from the login form and create a new `user` instance using the `.find_by` method with the user's email input as the argument. Then, I will require that the `user` not be `nil` and call the `authenticate` method on `user` with the user's password input as the argument. If both of these conditions return true, I can then set the `session[:id]` equal to my `user.id`, effectively logging in my `user`. I can use the `authenticate` method because I inserted the `has_secure_password` macro to my `User` class, `bcrypt` to my Gemfile, and the `password_digest` attribute to my user migration table.

- [x] **Who should be able to edit and destroy a model?**<br>
Only users who created a medication or a reaction will be able to view, edit, or destroy said medication or reaction.

- [x] **What will you need to implement to have your application considered a CRUD app?**<br>
I'll need to implement the following routes: `GET '/medications'`, `GET '/medications/new'`, `POST '/medications'`, `GET '/medications/:id'`, `GET '/medications/:id/edit'`, `PATCH '/medications/:id'`, `DELETE '/medications/:id'`