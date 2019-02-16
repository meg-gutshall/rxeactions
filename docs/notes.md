# Notes for Reference

## Model Associations

I decided to create my associations based off the document/section/paragraph example in the [ActiveRecord Associations docs](https://guides.rubyonrails.org/v2.3.11/association_basics.html#the-has-many-through-association).
Validations ensure that only valid data is persisted to your database. Model-level validations are the best way to ensure this because they are database-agnostic, cannot be bypassed by end users, and are convenient to test and maintain.

### reaction.rb

I found the `:include` option for my `:belongs_to` association [here](https://guides.rubyonrails.org/v2.3.11/association_basics.html#belongs-to-association-reference).