# Territory.destroy_all
Installer.destroy_all
Transaction.destroy_all

territories = [
  { code: "01", name: "PHL", windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: false },
  { code: "02", name: "NJ",  windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: true },
  { code: "03", name: "MD",  windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: false },
  { code: "04", name: "CT",  windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: false },
  { code: "05", name: "LI",  windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: false },
  { code: "06", name: "BOS", windows: true, siding: true, doors: true, gutters: true, roofing: true, solar: false },
  { code: "07", name: "ATL", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "08", name: "CHI", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "09", name: "DET", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "10", name: "HOU", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "12", name: "DAL", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "13", name: "DEN", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "15", name: "TPA", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "16", name: "AUS", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "17", name: "CLT", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "50", name: "NSH", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
  { code: "51", name: "PHX", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: true },
  { code: "52", name: "PIT", windows: [true, false].sample, siding: [true, false].sample, doors: [true, false].sample,
    gutters: [true, false].sample, roofing: [true, false].sample, solar: false },
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
  Transaction.create(installer: installer, amount: rand(25..500))
end
