# Sinatra Project Checklist of Requirements

- [x] **Create a skeleton repository on Github**<br>
[https://github.com/meg-gutshall/sinatra-project](https://github.com/meg-gutshall/sinatra-project)

- [x] **What is the purpose of ActiveRecord?**<br>
ActiveRecord acts as a link between Ruby and our SQLite database. ActiveRecord takes the Ruby objects that we create in the app’s controller files and persists them to our database each time an object is saved. We’re able to do this because we use the `sinatra-activerecord` gem which extends Sinatra with ActiveRecord helper methods and Rake tasks.

- [x] **What models and associations will you have and why?**<br>
My models will be `Users`, `Medications`, and `Reactions`. `Users` will have many `Medications` and a `Medication` will belong to a `User`. `Medications` will have many `Reactions` and a `Reaction` will belong to a `Medication`. Therefore, `Users` will have many `Reactions` through `Medications` and a `Reaction` will belong to a `User` through a `Medication`.

- [ ] **What validations will you use on your models?**<br>

- [ ] **How will you implement an authentication system?**<br>

- [ ] **Who should be able to edit and destroy a model?**<br>

- [ ] **What will you need to implement to have your application considered a CRUD app?**<br>
