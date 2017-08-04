# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Item.delete_all
Shop.delete_all
ItemShop.delete_all

Item.create(name: "氷結", price: 130, manufacturer: 'キリン')
Item.create(name: "ハンドスピナー", price: 1399, manufacturer: 'Xingmeng')
Item.create(name: "ビックル", price: 100, manufacturer: 'SUNTORY')
10.times do |i|
	Item.create(name: "ハーゲンダッツ #{i}味")
end
# id:1-13


shop_names = [
    "ミニストップつくば天久保店",
		"セブンイレブンつくば平塚店",
		"セブン-イレブンつくば天久保４丁目店",
		"ミニストップつくば栗原店",
		"セブン-イレブンつくば春日４丁目店",
		"セブン-イレブンつくば桜柴崎店",
		"ファミリーマートつくば春日四丁目店",
		"セブン-イレブンつくば西平塚店",
		"ファミリーマートつくば花畑店",
		"ファミリーマート筑波記念病院前店",
		"セブン‐イレブン つくば松見公園店",
		"ファミリーマートつくば天久保一丁目店",
		"セブン-イレブンつくば学園の森２丁目店",
		"セブン-イレブンつくば吾妻３丁目店",
		"ミニストップ つくば研究学園店",
		"ファミリーマート つくば研究学園店",
		"コンビニエンスストア · 研究学園４丁目２−１５",
		"コンビニエンスストア · 吾妻１丁目６−１",
		"ローソン つくば春日三丁目店",
		"セブン‐イレブン つくば北大通り店",
]

shop_names.length.times do |i|
	Shop.create(name: shop_names[i], lat: "#{i*1.2}", lng: "#{i*2}")
end
# id:1-10

ItemShop.create(item_id:1 , shop_id:1 , stock: 0)
ItemShop.create(item_id:1 , shop_id:3 , stock: 1)
ItemShop.create(item_id:1 , shop_id:4 , stock: 2)
ItemShop.create(item_id:1 , shop_id:5 , stock: 0)
ItemShop.create(item_id:1 , shop_id:7 , stock: 2)
ItemShop.create(item_id:1 , shop_id:9 , stock: 1)
ItemShop.create(item_id:1 , shop_id:10 , stock: 2)
ItemShop.create(item_id:2 , shop_id:1 , stock: 0)
ItemShop.create(item_id:2 , shop_id:6 , stock: 1)
ItemShop.create(item_id:3 , shop_id:1 , stock: 1)
ItemShop.create(item_id:3 , shop_id:2 , stock: 0)
ItemShop.create(item_id:3 , shop_id:3 , stock: 2)
ItemShop.create(item_id:3 , shop_id:6 , stock: 2)
ItemShop.create(item_id:3 , shop_id:9 , stock: 0)
ItemShop.create(item_id:3 , shop_id:10 , stock: 0)
ItemShop.create(item_id:4 , shop_id:1 , stock: 1)
ItemShop.create(item_id:4 , shop_id:4 , stock: 0)
ItemShop.create(item_id:4 , shop_id:8 , stock: 0)
ItemShop.create(item_id:5 , shop_id:1 , stock: 0)
ItemShop.create(item_id:5 , shop_id:2 , stock: 0)
ItemShop.create(item_id:5 , shop_id:5 , stock: 0)
ItemShop.create(item_id:6 , shop_id:1 , stock: 0)
ItemShop.create(item_id:6 , shop_id:4 , stock: 0)
ItemShop.create(item_id:6 , shop_id:5 , stock: 0)
ItemShop.create(item_id:6 , shop_id:7 , stock: 0)
ItemShop.create(item_id:6 , shop_id:8 , stock: 0)
ItemShop.create(item_id:6 , shop_id:10 , stock: 0)
ItemShop.create(item_id:7 , shop_id:1 , stock: 0)
ItemShop.create(item_id:7 , shop_id:7 , stock: 0)
ItemShop.create(item_id:8 , shop_id:1 , stock: 0)
ItemShop.create(item_id:8 , shop_id:2 , stock: 0)
ItemShop.create(item_id:8 , shop_id:5 , stock: 0)
ItemShop.create(item_id:8 , shop_id:6 , stock: 0)
ItemShop.create(item_id:8 , shop_id:7 , stock: 0)
ItemShop.create(item_id:8 , shop_id:8 , stock: 0)
ItemShop.create(item_id:8 , shop_id:9 , stock: 0)
ItemShop.create(item_id:8 , shop_id:10 , stock: 0)
ItemShop.create(item_id:9 , shop_id:1 , stock: 0)
ItemShop.create(item_id:9 , shop_id:2 , stock: 0)
ItemShop.create(item_id:9 , shop_id:3 , stock: 0)
ItemShop.create(item_id:9 , shop_id:4 , stock: 0)
ItemShop.create(item_id:9 , shop_id:5 , stock: 0)
ItemShop.create(item_id:9 , shop_id:6 , stock: 0)
ItemShop.create(item_id:9 , shop_id:7 , stock: 0)
ItemShop.create(item_id:9 , shop_id:8 , stock: 0)
ItemShop.create(item_id:9 , shop_id:9 , stock: 0)
ItemShop.create(item_id:9 , shop_id:10 , stock: 0)
ItemShop.create(item_id:10 , shop_id:1 , stock: 0)
ItemShop.create(item_id:11 , shop_id:1 , stock: 0)
ItemShop.create(item_id:11 , shop_id:10 , stock: 0)
ItemShop.create(item_id:12 , shop_id:1 , stock: 0)
ItemShop.create(item_id:12 , shop_id:5 , stock: 0)
ItemShop.create(item_id:12 , shop_id:6 , stock: 0)
ItemShop.create(item_id:12 , shop_id:10 , stock: 0)
ItemShop.create(item_id:13 , shop_id:1 , stock: 0)
ItemShop.create(item_id:13 , shop_id:2 , stock: 0)
