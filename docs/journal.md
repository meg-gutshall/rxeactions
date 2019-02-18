# My Experience Building Reaxtions

[ActiveRecord has_many_through Association](https://guides.rubyonrails.org/association_basics.html#the-has-many-through-association)

## Fri, Feb 15

Was kind of slacking off until now. I had an idea of what I wanted to do but I couldn't really formulate it and after that Fwitter lab I just lost all of my drive. First thing this morning I had a chat with DJ and was able to get a few questions answered that helped me feel more secure in the direction I'll be going with this.

Some definitely issues I forsee though come to when the users edit their medications. A user may need to change the medication dosage or usage instructions according to their doctor so I want their reactions up until that change to be associated with the original medication record, not the edited one. I still have to figure out how to go about this and will probably speak with Howard and/or Ryan for help on it. Or I could reach out to Avi!

## Sat, Feb 16

I built my migrations, models, associations, and set my validations--using ActiveRecord for most of it! I had to go through a lot of iterations of my `create_table` migrations because I kept changing up my model attributes. I'll probably still have more changes to implement as I keep going through this project that will cause even more changes but we will wait to see.

I did, however, learn a LOT about ActiveRecord validations and associations by reading through the online documentation. I feel like I have a much better grasp of those concepts now and will be more prepared after I submit this project and go into the Rails section.

## Sun, Feb 17

I learned how to build out seed files and create custom Rake tasks using namespacing options to seed my database with those files.