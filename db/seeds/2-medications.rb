# My first go at creating seeds for a database

# ==================== Medication seeds ==================== #

# Clear any existing medications from the database
Medication.destroy_all

# Create new medications for Sam
Medication.create!(
  name: "Prozac",
  dosage_amount: "25 mg",
  dosage_form: "caplet",
  usage_instructions: "Take once daily in the morning",
  usage_purpose: "anxiety",
  prescribing_doctor: "Dr. Johnson",
  currently_taking: "true",
  start_date: "2010-12-01",
  end_date: "",
  created_at: Time.strptime('2015-12-11 17:15', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2016-02-12 12:46', '%Y-%m-%d %H:%M'),
  user_id: "1"
)
Medication.create!(
  name: "Codeine",
  dosage_amount: "60 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily for 5 days with food",
  usage_purpose: "apendicitis",
  prescribing_doctor: "Dr. Heinbert",
  currently_taking: "false",
  start_date: "2018-02-01",
  end_date: "2018-03-01",
  created_at: Time.strptime('2018-02-17 08:20', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2018-03-03 10:19', '%Y-%m-%d %H:%M'),
  user_id: "1"
)
Medication.create!(
  name: "Chantix",
  dosage_amount: "0.5 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily for 3 days, then twice daily for 12 weeks",
  usage_purpose: "smoking cessation",
  prescribing_doctor: "Dr. Heinbert",
  currently_taking: "true",
  start_date: "2019-01-01",
  end_date: "",
  created_at: Time.strptime('2019-01-01 13:31', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2019-01-23 13:31', '%Y-%m-%d %H:%M'),
  user_id: "1"
)

# Create new medications for Beth
Medication.create!(
  name: "Wellbutrin",
  dosage_amount: "150 mg",
  dosage_form: "capsule",
  usage_instructions: "Take once daily before bed",
  usage_purpose: "depression",
  prescribing_doctor: "Dr. Shanastay",
  currently_taking: "true",
  start_date: "2016-05-01",
  end_date: "",
  created_at: Time.strptime('2016-05-24 18:55', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2016-07-14 14:13', '%Y-%m-%d %H:%M'),
  user_id: "2"
)
Medication.create!(
  name: "Lexapro",
  dosage_amount: "50 mg",
  dosage_form: "caplet",
  usage_instructions: "Take once daily before bed",
  usage_purpose: "depression",
  prescribing_doctor: "Dr. Shanastay",
  currently_taking: "true",
  start_date: "2016-05-01",
  end_date: "",
  created_at: Time.strptime('2016-05-24 19:02', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2016-05-24 19:06', '%Y-%m-%d %H:%M'),
  user_id: "2"
)
Medication.create!(
  name: "Adderall",
  dosage_amount: "25 mg",
  dosage_form: "capsule",
  usage_instructions: "Take once daily in the morning",
  usage_purpose: "ADHD",
  prescribing_doctor: "Dr. Johnston",
  currently_taking: "true",
  start_date: "2001-07-01",
  end_date: "",
  created_at: Time.strptime('2015-07-01 11:05', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2019-02-11 09:17', '%Y-%m-%d %H:%M'),
  user_id: "2"
)
Medication.create!(
  name: "Yaz",
  dosage_amount: "33 mg",
  dosage_form: "pill",
  usage_instructions: "Take once daily at the same time each day",
  usage_purpose: "birth control",
  prescribing_doctor: "",
  currently_taking: "false",
  start_date: "2013-10-01",
  end_date: "2018-09-01",
  created_at: Time.strptime('2015-10-30 20:04', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2018-09-04 16:34', '%Y-%m-%d %H:%M'),
  user_id: "2"
)

# Create new medications for Charles
Medication.create!(
  name: "Nexium",
  dosage_amount: "20 mg",
  dosage_form: "capsule",
  usage_instructions: "Take once daily one hour before a meal. Do not take for more than 14 days at a time.",
  usage_purpose: "heartburn",
  prescribing_doctor: "Dr. Leverlitz",
  currently_taking: "false",
  start_date: "2017-04-01",
  end_date: "2017-05-01",
  created_at: Time.strptime('2017-04-20 12:30', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2017-05-02 13:41', '%Y-%m-%d %H:%M'),
  user_id: "3"
)
Medication.create!(
  name: "Zithromax",
  dosage_amount: "250 mg",
  dosage_form: "pill",
  usage_instructions: "Take as directed on package",
  usage_purpose: "flu",
  prescribing_doctor: "Dr. Leverlitz",
  currently_taking: "true",
  start_date: "2019-03-01",
  end_date: "",
  created_at: Time.strptime('2019-03-03 10:09', '%Y-%m-%d %H:%M'),
  updated_at: "",
  user_id: "3"
)

# Create new medications for Gerry
Medication.create!(
  name: "Levatol",
  dosage_amount: "20 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily with food",
  usage_purpose: "high blood pressure",
  prescribing_doctor: "Dr. Smitts",
  currently_taking: "true",
  start_date: "2017-04-01",
  end_date: "",
  created_at: Time.strptime('2017-04-30 14:59', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2017-04-30 15:01', '%Y-%m-%d %H:%M'),
  user_id: "4"
)
Medication.create!(
  name: "Warfarin",
  dosage_amount: "5 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily",
  usage_purpose: "blood clots",
  prescribing_doctor: "Dr. Smitts",
  currently_taking: "true",
  start_date: "2017-10-01",
  end_date: "",
  created_at: Time.strptime('2017-10-14 19:19', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2017-10-28 14:36', '%Y-%m-%d %H:%M'),
  user_id: "4"
)
Medication.create!(
  name: "Amoxicillin",
  dosage_amount: "500 mg",
  dosage_form: "capsule",
  usage_instructions: "Take one capsule every 8 hours until prescription is completely finished.",
  usage_purpose: "flu",
  prescribing_doctor: "Dr. Smitts",
  currently_taking: "false",
  start_date: "2018-12-01",
  end_date: "2019-01-01",
  created_at: Time.strptime('2018-12-30 17:35', '%Y-%m-%d %H:%M'),
  updated_at: Time.strptime('2019-01-02 09:55', '%Y-%m-%d %H:%M'),
  user_id: "4"
)