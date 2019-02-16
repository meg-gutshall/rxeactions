# Features to Implement in My App

## All Models

- [ ] Add validations directly into my models. Check for presence, `email` uniqueness, `password` length, etc.

## Controllers

- [ ] Decide whether or not to use bang versions for methods that trigger validations (i.e. `create`, `save`, `update`). These methods will only save to the database if the object is valid, otherwise:
  - The bang versions (i.e. `create!`, `save!`, `update!`) raise an exception if the record is invalid.
  - The non-bang versions dont: `save` and `update` return `false`, and `create` returns the object.

### MedicationsController

- [ ] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the medication can access these routes for their own medications.

### ReactionsController

- [ ] Wrap my edit and delete form routes in conditional statements for an extra layer security to ensure that only the user who created the reaction can access these routes for their own reactions.

## All Forms

- [ ] Use nested hashes.

## Login & Signup Forms

- [ ] Link login form to signup form and vice versa in case the user navigated to the wrong page.

## New User Signup Form

- [ ] Use [this validation](http://html5pattern.com/Emails) in the input field for my email.

## New Medications Form

- [ ] Use [this PDF](http://www.srmuniv.ac.in/sites/default/files/downloads/Dosage_forms.pdf) to create a dropdown list to select a `dosage_form`.

## README.md

- [ ] Update `README.md` with project info.