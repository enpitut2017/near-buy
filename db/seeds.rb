# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.create(name: "氷結")
Item.create(name: "ハンドスピナー")
Item.create(name: "ビックル")
10.times do |i|
	Item.create(name: "ハーゲンダッツ #{i}味")
end