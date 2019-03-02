# # ========== Create user seeds ========== #

# # Clear any existing users from the database
# User.destroy_all

# # User seeds information
# user_info = [
#   [name: "Sam Carver", email: "sammy@gmail.com", password: "password", birth_date: "1990-01-01", known_allergies: "Aspirin"],
#   [name: "Beth Horne", email: "betsy@aol.com", password: "password", birth_date: "1983-04-13", known_allergies: ""],
#   [name: "Charles Planch", email: "trombonez33@gmail.com", password: "password", birth_date: "1975-11-25", known_allergies: "Penicillin"]
# ]

# # Create new users
# user_info.each do |name, email, password, birth_date, known_allergies|
#   User.create!(name: name, email: email, password: password, birth_date: birth_date, known_allergies: known_allergies)
# end

Dir[File.join(File.dirname(__FILE__), 'db', 'seeds', '*.rb')].sort.each do |seed|
  load seed
end