Territory.destroy_all

territories = [
  { code: "01", name: "PHL" },
  { code: "02", name: "NJ" },
  { code: "03", name: "MD" },
  { code: "04", name: "CT" },
  { code: "05", name: "LI" },
  { code: "06", name: "BOS" },
  { code: "07", name: "ATL" },
  { code: "08", name: "CHI" },
  { code: "09", name: "DET" },
  { code: "10", name: "HOU" },
  { code: "12", name: "DAL" },
  { code: "13", name: "DEN" },
  { code: "15", name: "TPA" },
  { code: "16", name: "AUS" },
  { code: "17", name: "CLT" },
  { code: "50", name: "NSH" },
  { code: "51", name: "PHX" },
  { code: "52", name: "PIT" },
]

# Insert the data into the territories table
territories.each do |territory|
  Territory.find_or_create_by(code: territory[:code], name: territory[:name])
end
