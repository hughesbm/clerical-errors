# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir.glob('db/seeds/races/*.json') do |file|
  race_hash = JSON.parse(File.read(file))

  Race.create(name: race_hash["name"], decription: race_hash["content"])
end
