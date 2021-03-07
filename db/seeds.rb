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
