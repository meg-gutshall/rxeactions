# My first go at creating seeds for a database

# ==================== Medication seeds ==================== #

# Clear any existing medications from the database
Medication.destroy_all

# Create new medications for Sam
Medication.create!(
  name: "Prozac",
  dosage_amount: "25 mg",
  dosage_form: "caplets",
  usage_instructions: "Take one daily",
  prescribing_doctor: "Dr. Johnson",
  start_date: "2010-12-01",
  end_date: "",
  ailment_treated: "anxiety",
  user_id: "1"
)
Medication.create!(
  name: "Codeine",
  dosage_amount: "30 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily for 5 days",
  prescribing_doctor: "Dr. Heinbert",
  start_date: "2018-02-01",
  end_date: "2018-03-01",
  ailment_treated: "tonsillectomy",
  user_id: "1"
)

# Create new medications for Beth
Medication.create!(
  name: "Wellbutrin",
  dosage_amount: "150 mg",
  dosage_form: "capsules",
  usage_instructions: "Take once daily before bed",
  prescribing_doctor: "Dr. Shanastay",
  start_date: "2016-05-01",
  end_date: "",
  ailment_treated: "depression",
  user_id: "2"
)
Medication.create!(
  name: "Lexapro",
  dosage_amount: "50 mg",
  dosage_form: "caplets",
  usage_instructions: "Take once daily before bed",
  prescribing_doctor: "Dr. Shanastay",
  start_date: "2016-05-01",
  end_date: "",
  ailment_treated: "depression",
  user_id: "2"
)
Medication.create!(
  name: "Adderall",
  dosage_amount: "75 mg",
  dosage_form: "capsule",
  usage_instructions: "Take once daily",
  prescribing_doctor: "",
  start_date: "2001-07-01",
  end_date: "",
  ailment_treated: "ADHD",
  user_id: "2"
)
Medication.create!(
  name: "Yaz",
  dosage_amount: "33 mg",
  dosage_form: "pill",
  usage_instructions: "Take once daily",
  prescribing_doctor: "",
  start_date: "2013-10-01",
  end_date: "2017-09-01",
  ailment_treated: "birth control",
  user_id: "2"
)

# Create new medications for Charles
Medication.create!(
  name: "Levatol",
  dosage_amount: "20 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily with food",
  prescribing_doctor: "Dr. Leverlitz",
  start_date: "2017-04-01",
  end_date: "",
  ailment_treated: "high blood pressure",
  user_id: "3"
)
Medication.create!(
  name: "Warfarin",
  dosage_amount: "5 mg",
  dosage_form: "tablet",
  usage_instructions: "Take once daily",
  prescribing_doctor: "Dr. Leverlitz",
  start_date: "2017-10-01",
  end_date: "",
  ailment_treated: "blood clots",
  user_id: "3"
)
Medication.create!(
  name: "Zithromax",
  dosage_amount: "250 mg",
  dosage_form: "pill",
  usage_instructions: "Take as directed on package",
  prescribing_doctor: "Dr. Leverlitz",
  start_date: "2019-02-01",
  end_date: "",
  ailment_treated: "flu",
  user_id: "3"
)