# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

states = State.create([
  { name: "Alabama" },
  { name: "Alaska" },
  { name: "American Samoa" },
  { name: "Arizona" },
  { name: "Arkansas" },
  { name: "California" },
  { name: "Colorado" },
  { name: "Connecticut" },
  { name: "Delaware" },
  { name: "District Of Columbia" },
  { name: "Federated States Of Micronesia" },
  { name: "Florida" },
  { name: "Georgia" },
  { name: "Guam" },
  { name: "Hawaii" },
  { name: "Idaho" },
  { name: "Illinois" },
  { name: "Indiana" },
  { name: "Iowa" },
  { name: "Kansas" },
  { name: "Kentucky" },
  { name: "Louisiana" },
  { name: "Maine" },
  { name: "Marshall Islands" },
  { name: "Maryland" },
  { name: "Massachusetts" },
  { name: "Michigan" },
  { name: "Minnesota" },
  { name: "Mississippi" },
  { name: "Missouri" },
  { name: "Montana" },
  { name: "Nebraska" },
  { name: "Nevada" },
  { name: "New Hampshire" },
  { name: "New Jersey" },
  { name: "New Mexico" },
  { name: "New York" },
  { name: "North Carolina" },
  { name: "North Dakota" },
  { name: "Northern Mariana Islands" },
  { name: "Ohio" },
  { name: "Oklahoma" },
  { name: "Oregon" },
  { name: "Palau" },
  { name: "Pennsylvania" },
  { name: "Puerto Rico" },
  { name: "Rhode Island" },
  { name: "South Carolina" },
  { name: "South Dakota" },
  { name: "Tennessee" },
  { name: "Texas" },
  { name: "Utah" },
  { name: "Vermont" },
  { name: "Virgin Islands" },
  { name: "Virginia" },
  { name: "Washington" },
  { name: "West Virginia" },
  { name: "Wisconsin" },
  { name: "Wyoming" }
])

relationship_types = RelationshipType.create([
  { name: "Wholesale" },
  { name: "Correspondent" },
  { name: "Direct Relationship" }
])

programs = Program.create([
  { name: "NA" },
  { name: "FHA" },
  { name: "VA" },
  { name: "USDA" }
])

titles = Title.create([
  { name: "Mortgage Loan Owner", code: "MLO", borrower: false, thirdParty: false, lender: true },
  { name: "Mortgage Loan Manager", code: "MLM", borrower: false, thirdParty: false, lender: true },
  { name: "Mortage Loan Processor", code: "MLP", borrower: false, thirdParty: false, lender: true },
  { name: "Underwriter", code: "UWR", borrower: false, thirdParty: false, lender: true },
  { name: "Third party", code: "TRH", borrower: false, thirdParty: true, lender: false },
  { name: "Borrower", code: "BRW", borrower: true, thirdParty: false, lender: false },
])

third_party_types = ThirdPartyType.create([
  { name: 'Title/Escrow/Attorney' },
  { name: 'Insurance Agent' },
  { name: 'Real Estate Agent' },
  { name: 'Notary Agent' }
])
