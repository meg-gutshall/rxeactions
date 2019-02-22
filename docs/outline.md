# Project Idea

## Name: Reaxtions

**Models:** Users, Medications, Reactions<br>
**User Attributes:** `name`, `email`, `password`, `birth_date`, `known_allergies`<br>
**Medication Attributes:** `name`, `dosage_amount`, `dosage_form`, `usage_instructions`, `prescribing_doctor`, `start_date`, `end_date`, `ailment_treated`<br>
**Reaction Attributes:** `title`, `reaction_detail`, `current`, `entry_timestamp`<br>

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
- Use date pickers
- Tally good reactions vs. bad reactions to see whether a medication is overall good or bad for the user
- Implement an update history for when changes are made to a medication

## Project Summary

My app acts as a medication diary, allowing users to track medications they’ve been prescribed and their associated side effects.<br>
The home page will be a dashboard that lists the user’s currently prescribed medications and some information about each one. Users will also have the option to view previously prescribed medications or view all.
