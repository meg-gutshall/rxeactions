# Features to Implement in My App

## All Models

- [ ] Add validations directly into my models. Check for presence, `email` uniqueness, `password` length, etc.

### User Model

- [ ] Consider birthdate input and storage format. Find out how the `date` datatype is accepted and processed.

### Medication Model

- [ ] Consider start/end date input and storage format. Find out how the `date` datatype is accepted and processed.

## All Controllers

- [ ] Can I wrap all of my controller routes in one validation or does it have to be separated per controller?
- [ ] Decide whether or not to use bang versions for methods that trigger validations (i.e. `create`, `save`, `update`). These methods will only save to the database if the object is valid, otherwise:
  - The bang versions (i.e. `create!`, `save!`, `update!`) raise an exception if the record is invalid.
  - The non-bang versions dont: `save` and `update` return `false`, and `create` returns the object.

### MedicationsController

- [ ] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the medication can access these routes for their own medications.

### ReactionsController

- [ ] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the reaction can access these routes for their own reactions.

## All Views

- [ ] Add bullet points for list items and give them slightly larger line-height spacing.

### Nav Bar

- [x] Create links to user dashboard, user's medications, about, and to log out.
- [ ] Decide what kind of sticky I want for the navigation and when I want it to expand.
- [ ] Build helper method to determine active link.
- [x] Create validation to show nav bar only to logged in users.

### All Forms

- [ ] Use nested hashes.

#### Login & Signup Forms

- [x] Link login form to signup form and vice versa in case the user navigated to the wrong page.

#### New User Signup Form

- [x] Use [this validation](http://html5pattern.com/Emails) in the input field for my email.

#### New Medications Form

- [x] Use `input type="month"` for medication start and end dates. See [source](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_input_month).

## README.md

- [ ] Update `README.md` with project info.