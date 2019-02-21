# My Experience Building Reaxtions

## Fri, Feb 15

Was kind of slacking off until now. I had an idea of what I wanted to do but I couldn't really formulate it and after that Fwitter lab I just lost all of my drive. First thing this morning I had a chat with DJ and was able to get a few questions answered that helped me feel more secure in the direction I'll be going with this.

Some definitely issues I forsee though come to when the users edit their medications. A user may need to change the medication dosage or usage instructions according to their doctor so I want their reactions up until that change to be associated with the original medication record, not the edited one. I still have to figure out how to go about this and will probably speak with Howard and/or Ryan for help on it. Or I could reach out to Avi!

## Sat, Feb 16

I built my migrations, models, associations, and set my validations--using ActiveRecord for most of it! I had to go through a lot of iterations of my `create_table` migrations because I kept changing up my model attributes. I'll probably still have more changes to implement as I keep going through this project that will cause even more changes but we will wait to see.

I did, however, learn a LOT about ActiveRecord validations and associations by reading through the online documentation. I feel like I have a much better grasp of those concepts now and will be more prepared after I submit this project and go into the Rails section.

## Sun, Feb 17

I learned how to build out seed files and create custom Rake tasks using namespacing options to seed my database with those files. I created three different seed files, one for each of my models. I know you don't have to do that but it helped me to seed my database one class at a time and play around with the data and see how the associations were working one layer at a time rather than just loading it all up at once and having this big tangled mess to sort through.

I created a bunch of view erb files as well as all of my controllers, I just haven't coded them out yet. I DID code out my `ApplicationController` which holds my configure block as well as my homepage route and some helper methods. In the configure block, I enabled sessions and set my session secret using the Sysrandom gem. I also set the paths for other files my controller will need access to throughout running the app. I created my `current_user` and `logged_in?` helper methods which I'll be able to call on throughout my app as well.

In my `SessionsController` I created a `GET "/signup"` route that takes the user to the signup form, wherein the user input will be `POST`ed to the `UsersController`. Additionally I created the `GET "/login"` and `POST "/login"` routes which render the user login page containing the login form, take the input from that form and check to see if the user exists and if the password is valid, and then either logs the user in or redirects them. Lastly, I made a `GET "/logout"` route that clears the user's session data, effectively logging them out of the app.

The last thing I did today was code out my login form. I did some research online and found that there are a lot of input types that are accepted besides the ones we've been exposed to in the labs and study sessions. I used types like `email` and `date` and plan to implement other. Also there are other input attributes, one of which `required` will come in handy when forcing someone to provide information in a form.

## Tues, Feb 19

Built out most of my `UsersController` today and my user edit form. I'm still trying to get the hang of interlacing the `SessionsController` and `UsersController` to create a new user as well as a new session. It's a little trickier than I had anticipated.

## Wed, Feb 20

I spent about 3 hours today working on an issue with my session not persisting as I browsed through different pages of my app. I tried to use some different gems to set a secure `session_secret` but it seems that the only thing that seems to work is a plain old string. I read through the Sinatra documentation but I just couldn't get it to work and I had wasted enough time on it already.

After the frustrating set back, I was able to get my full CRUD done for my `UsersController` as well as code out all the views! I think tomorrow I'll be able to finish up the reactions and then start figuring out how to approach my medication changes issue. Tomorrow night there's an AMA study session for the Sinatra project which will hopefully be helpful. We'll just have to see!