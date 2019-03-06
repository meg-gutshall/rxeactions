# My first go at creating seeds for a database

# ==================== User seeds ==================== #

# Clear any existing users from the database
User.destroy_all

# Create new users
User.create!(
  name: "Sam Carver",
  email: "sammy@gmail.com",
  password: "password",
  birth_date: "1990-01-01",
  known_allergies: "Aspirin"
)
User.create!(
  name: "Beth Horne",
  email: "betsy@aol.com",
  password: "password",
  birth_date: "1983-04-13",
  known_allergies: ""
)
User.create!(
  name: "Charles Planch",
  email: "trombonez33@gmail.com",
  password: "password",
  birth_date: "1975-11-25",
  known_allergies: "Penicillin"
)
User.create!(
  name: "Gerry Canter",
  email: "gerbear@yahoo.com",
  password: "password",
  birth_date: "1950-08-10",
  known_allergies: ""
)