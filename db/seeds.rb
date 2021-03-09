# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

fido = Pet.create(
  name: 'Fido',
  species: 'Dog',
  birthdate: Time.utc(2017, 7, 9),
  breed: 'Catahoula',
  color: 'Mottled Grey and Black',
  sex: 'Male',
  weight: 70,
  kid_friendly: true,
  solo_pet: false,
  description: <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
  Fido is a very active dog, and cat-friendly too! He will probably
  need crate training and lots of space to run around.
  EOS
)

fifi = Pet.create(
  name: 'Fifi',
  species: 'Dog',
  birthdate: Time.utc(2019, 10, 30),
  breed: 'Standard Poodle',
  color: 'White',
  sex: 'Female',
  weight: 55,
  kid_friendly: true,
  solo_pet: true,
  description: <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
  Fifi is somewhat high-maintanence and loves to be the center of attention.
  She's fiercely loyal, however, and great with kids.
  EOS
)

guttermuppet = Pet.create(
  name: 'Guttermuppet',
  species: 'Cat',
  birthdate: Time.utc(2015, 4, 30),
  breed: 'Domestic Shorthair',
  color: 'Grey and White',
  sex: 'Male',
  weight: 17,
  kid_friendly: true,
  solo_pet: false,
  description: <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
  Guttermuppet is extemely gregarious and food motivated. He loves to rub on
  your feet and just hang out. Do be careful about him trying to get on your
  kitchen counter though.
  EOS
)

sweetums = Pet.create(
  name: 'Sweetums',
  species: 'Cat',
  birthdate: Time.utc(2012, 2, 30),
  breed: 'Domestic Shorthair',
  color: 'Tortiseshell',
  sex: 'Female',
  weight: 9,
  kid_friendly: false,
  solo_pet: true,
  description: <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
  Sweetums is a special cat. She's perfect for someone she can live alone with
  and develop a special bond. She does not get along with other animals.
  EOS
)

chester = Pet.create(
  name: 'Chester',
  species: 'Parrot',
  birthdate: Time.utc(2002, 3, 30),
  breed: 'African Grey',
  color: 'Grey',
  sex: 'Male',
  weight: 1,
  kid_friendly: false,
  solo_pet: false,
  description: <<-EOS.gsub(/^[\s\t]*/, '').gsub(/[\s\t]*\n/, ' ').strip
  Chester is a fun little guy who knows some unsavory language. He's looking 
  a very long term companion.
  EOS
)

guest = User.create(
  full_name: 'Pet Seeker',
  password: 'wannapet',
  email: 'petseeker@example.com',
  admin: false
)

admin = User.create(
  full_name: 'Shelter Admin',
  password: 'gottapet',
  email: 'shelteradmin@example.com',
  admin: true
)
