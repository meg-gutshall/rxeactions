# Notes for Reference

## ActiveRecord Model Associations

I decided to create my associations based off the document/section/paragraph example in the [ActiveRecord Associations docs](https://guides.rubyonrails.org/v2.3.11/association_basics.html#the-has-many-through-association).

### Reaction Model -- ActiveRecord Association Option

I found the `:include` option for my `:belongs_to` association [here](https://guides.rubyonrails.org/v2.3.11/association_basics.html#belongs-to-association-reference).

## ActiveRecord Model Validations

Validations ensure that only valid data is persisted to your database. Model-level validations are the best way to ensure this because they are database-agnostic, cannot be bypassed by end users, and are convenient to test and maintain.

Each helper accepts an arbitrary number of attribute names, so with a single line of code you can add the same kind of validation for several attributes. Every time a validation fails, an error message is added to the object's `errors` collection, and this message is associated with the attribute being validated. Each attribute accepts a `:message` option in which you can customize the error message, but if that isn't specified there's also a default error message for each attribute.

### User Model -- ActiveRecord Validation Helpers

- I used the `presence` helper to make sure my users completed all required fields on the signup form.
- I used the `length` helper with the `:in` option to make sure my users set their password between 6 and 20 characters.
- I used the `uniqueness` helper with the `on: :create` and custom `:message` options when it came to validating my users' email address. I specified it to only check for this on creation because I didn't want a message saying that the email already has an account because, duh it's theirs!

### Medication Model -- ActiveRecord Validation Helpers

- I used the `presence` helper to make sure my users completed all required fields on the new medication form.

### Reaction Model -- ActiveRecord Validation Helpers

- I used the `presence` helper to make sure my users complete all required fields on the new reaction form.

## Other Notes

- Use `yyyy-mm-dd [hh:mm:ss]` as a string representation for a `DateTime` datatype.
  - Going to have to find a way to accept just `yyyy-mm` as input.