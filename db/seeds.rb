Admin.create([
  { email: 'huw@example.com', password: 'password' },
  { email: 'admin@example.com', password: 'password' },
  { email: 'laura@example.com', password: 'password' },
])

indonesia = Country.create(name: 'Indonesia')
libya = Country.create(name: 'Libya')

ind_community_1 = indonesia.communities.create(name: 'Indonesia 1', location: "Jakarta")
ind_community_2 = indonesia.communities.create(name: 'Indonesia 2', location: "Sumatra")


2.times do
  ind_community_1.children.create(name: Faker::Name.name)
end
