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
  Installer.find_or_create_by(name: installer[:name], territory: territory)
end

parts = [
  { product_coding: 1, part_number: "15001", description: "Basic Window", amount: 70.00 },
  { product_coding: 1, part_number: "15011", description: "Sliding Glass Door", amount: 250.00 },
  { product_coding: 1, part_number: "50092", description: "Installer Supplied Material Receipts", amount: 1.00 },
  { product_coding: 1, part_number: "99999", description: "Percentage Model / Flat Fee", amount: 1.00 },
  { product_coding: 2, part_number: "25024", description: "Tear off Asbestos (per sq)", amount: 55.00 },
  { product_coding: 2, part_number: "23071", description: "Tear off Cedar", amount: 50.00 },
  { product_coding: 2, part_number: "25025", description: "Tear Off Stucco (per sq)", amount: 55.00 },
  { product_coding: 2, part_number: "25022", description: "Tear Off Vinyl/Steel/Asphalt Shingles (per sq)",
    amount: 20.00 },
  { product_coding: 2, part_number: "25023", description: "Tear Off Wood (per sq)", amount: 30.00 },
  { product_coding: 2, part_number: "99999", description: "Percentage Model / Flat Fee", amount: 1.00 },
  { product_coding: 5, part_number: "55001", description: "Roofing Installation", amount: 90.00 },
  { product_coding: 5, part_number: "55002", description: "Install Low slope Torch Down/ Liberty", amount: 100.00 },
  { product_coding: 5, part_number: "55044", description: "BuildIn/Close In Skylight", amount: 50.00 },
  { product_coding: 5, part_number: "80510", description: "Install Intake and Exhaust venting (PER FT.)",
    amount: 1.50 },
  { product_coding: 5, part_number: "55004", description: "Non-Walkable roofs (persq.)", amount: 10.00 },
  { product_coding: 5, part_number: "55003", description: "Removal of additional layer of shingles", amount: 10.00 },
  { product_coding: 5, part_number: "81126", description: "PHL Trash Removal Fee", amount: 400.00 },
  { product_coding: 5, part_number: "99999", description: "Percentage Model / Flat Fee", amount: 400.00 },
  { product_coding: 3, part_number: "80511", description: "Provide & Install Gutters per ft", amount: 4.45 },
  { product_coding: 3, part_number: "80512", description: "Provide & Install Downspouts per ft", amount: 4.45 },
  { product_coding: 3, part_number: "55024", description: "Install Gutters per foot", amount: 1.75 },
]

Part.create!(parts)
