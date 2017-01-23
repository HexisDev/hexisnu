# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a = Date.new(2017-01-21)
Article.create(title: "hejsan", text: "AOEUAe uaoeu aoeu eu aou aoe uau aoeu aoe u",
    created_at: a)
Article.create(title: "Rocket League turnering", text: "Hexis anordnar en 2v2 rocket league turnering!")
