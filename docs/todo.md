# Features to Implement in My App

## All Models

- [x] Add validations directly into my models. Check for presence, `email` uniqueness, `password` length, etc.

### User Model

- [x] Consider birthdate input and storage format. Find out how the `date` datatype is accepted and processed.

### Medication Model

- [x] Consider start/end date input and storage format. Find out how the `date` datatype is accepted and processed.

## All Controllers

- [x] Can I wrap all of my controller routes in one validation or does it have to be separated per controller?
- [x] Decide whether or not to use bang versions for methods that trigger validations (i.e. `create`, `save`, `update`). These methods will only save to the database if the object is valid, otherwise:
  - The bang versions (i.e. `create!`, `save!`, `update!`) raise an exception if the record is invalid.
  - The non-bang versions dont: `save` and `update` return `false`, and `create` returns the object.

### MedicationsController

- [x] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the medication can access these routes for their own medications.

### ReactionsController

- [x] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the reaction can access these routes for their own reactions.

## All Views

- [x] Make sure Flash alerts work.

### Home Page

- [x] Write a short summary of what the app was made for and how to use the app.

### User Dashboard

- [ ] Display medications newest added to oldest.

### Medication Detail Page

- [ ] Display reactions newest added to oldest.
- [ ] Add pop-up second check for delete action.

### Reaction Detail Page

- [ ] Display reactions newest added to oldest.
- [ ] Add pop-up second check for delete action.

### Nav Bar

- [x] Create links to user dashboard, user's medications, about, and to log out.
- [ ] Decide what kind of sticky I want for the navigation and when I want it to expand.
- [ ] Determine active link.
- [ ] Left align Logout link.
- [x] Create validation to show nav bar only to logged in users.

### All Forms

- [x] Use nested hashes.
- [x] Fix dates.
- [x] Populate edit forms.

#### Login & Signup Forms

- [x] Link login form to signup form and vice versa in case the user navigated to the wrong page.

#### New User Signup Form

- [x] Use [this validation](http://html5pattern.com/Emails) in the input field for my email.

#### New Medications Form

- [x] Use `input type="month"` for medication start and end dates. See [source](https://www.w3schools.com/html/tryit.asp?filename=tryhtml_input_month).

## Project Requirements

### README.md

- [x] Update `README.md` with project info.

### Blog Post

- [ ] Turn `journal.md` into blog post.
- [x] Write post for About page.

### Videos

- [x] Record 30-minute live coding video.
- [x] Record walkthrough video.