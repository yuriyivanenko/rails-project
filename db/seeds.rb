require "faker"

Territory.destroy_all
Installer.destroy_all
Transaction.destroy_all

territories = [
  { territory_coding: "01", name: "PHL" },
  { territory_coding: "02", name: "NJ" },
  { territory_coding: "03", name: "MD" },
  { territory_coding: "04", name: "CT" },
  { territory_coding: "05", name: "LI" },
  { territory_coding: "06", name: "BOS" },
  { territory_coding: "07", name: "ATL" },
  { territory_coding: "08", name: "CHI" },
  { territory_coding: "09", name: "DET" },
  { territory_coding: "10", name: "HOU" },
  { territory_coding: "12", name: "DAL" },
  { territory_coding: "13", name: "DEN" },
  { territory_coding: "15", name: "TPA" },
  { territory_coding: "16", name: "AUS" },
  { territory_coding: "17", name: "CLT" },
  { territory_coding: "50", name: "NSH" },
  { territory_coding: "51", name: "PHX" },
  { territory_coding: "52", name: "PIT" },
]

Territory.create!(territories)

installers = [
  { territory: "MD", name: "A&M Contractor" },
  { territory: "MD", name: "AF Construction" },
  { territory: "MD", name: "Am Gut Solution" },
  { territory: "MD", name: "Am Gut System" },
  { territory: "MD", name: "B.L Windows" },
  { territory: "MD", name: "BD Windows" },

  { territory: "NJ", name: "01 Contractors" },
  { territory: "NJ", name: "Acropolis" },
  { territory: "NJ", name: "ADP" },
  { territory: "NJ", name: "A&B Windows" },
  { territory: "NJ", name: "Aguilar Legacy" },

  { territory: "PHL", name: "A&A Roofing" },
  { territory: "PHL", name: "Adams Family" },
  { territory: "PHL", name: "American Exteriors" },
  { territory: "PHL", name: "Avangard" },
  { territory: "PHL", name: "Barahona" },
  { territory: "PHL", name: "Brian Liebel" },
  { territory: "PHL", name: "Cavallari" },
]

installers.each do |installer|
  territory = Territory.find_by(name: installer[:territory])
  installer = Installer.find_or_create_by(name: installer[:name], territory: territory)

  project_number = "#{Faker::Number.number(digits: 2)}-#{Faker::Number.number(digits: 5)}"
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  full_name = "#{first_name} #{last_name}"
  fake_date = Faker::Date.between(from: Date.new(Date.today.year, 7, 1), to: Date.new(Date.today.year, 8, 31))

  project = Project.create(project_number: project_number, project_manager: full_name)

  Transaction.create(installer: installer, territory: territory,
                     description: "Service",
                     amount: rand(24...350),
                     project: project,
                     date: fake_date)
end
