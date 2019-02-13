# Project Idea

**Name:** Reaxtions<br>
**Models:** Users, Medications, Reactions<br>
**User Properties:** `name`, `email`, `password`, `birth_date`<br>
**Medication Properties:** `name`, `dosage`, `dosage_form`, `instruction`, `prescribing_doctor`, `start_date`, `end_date`, `ailment_treated`<br>
**Reaction Properties:** `comment`, `entry_timestamp`<br>

**Interface & Functionality:**

- Users dashboard that has divs with different functionality
  - List medications and can group by current, previous, and all
- Users can only view and manage their own medications

**Expansion:**

- Doctors model
  - Will have contact info properties
  - All users can view doctors’ info
  - Can view their prescribed medications and details of the user it belongs to
- Reminder/alarm to take medication
- Add family members function
- Track the quantity of a medication and when the user will need a refill
  - Possibly send an alert to the prescribing doctor
- Sort medications by prescribing doctor

## Project Summary

My app acts as a medication diary, allowing users to track medications they’ve been prescribed and their associated side effects.<br>
The home page will be a dashboard that lists the user’s currently prescribed medications and some information about each one. Users will also have the option to view previously prescribed medications or view all.<br>
Users will sign up for the app by providing their `name`, `email`, `password`, and `birth_date` and log in with just their `email` and `password`. They will only be able to perform CRUD actions on their own medications. When they create a new medication, the following fields will be requested: `name`, `dosage`, `dosage_form`, `instruction`, `prescribing_doctor`, `start_date`, `end_date`, and `ailment_treated`. Each medication will also be able to have reactions. The reaction form will include a textarea field `comments` where users can write any side effects they experienced or jot down any notes related to the medication. An `entry_timestamp` will auto-populate on submission of each reaction.
