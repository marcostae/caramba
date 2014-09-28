
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

type_group = Typegroup.create(name: "Top")
Type.create(name: "Wifi gratuito", typegroup: type_group)
Type.create(name: "Tomada", typegroup: type_group)
Type.create(name: "Banheiro Público", typegroup: type_group)
Type.create(name: "Comida de rua", typegroup: type_group)
Type.create(name: "Comida 24h", typegroup: type_group)
Type.create(name: "Café 24h", typegroup: type_group)
Type.create(name: "Impressora / Gráfica", typegroup: type_group)
Type.create(name: "Booze", typegroup: type_group)

type_group = Typegroup.create(name: "Mid")
Type.create(name: "Banco 24h", typegroup: type_group)
Type.create(name: "Farmácia", typegroup: type_group)

type_group = Typegroup.create(name: "Low")
Type.create(name: "Lan House", typegroup: type_group)
Type.create(name: "Posto de gasolina", typegroup: type_group)
Type.create(name: "Casa de câmbio", typegroup: type_group)
Type.create(name: "Banca", typegroup: type_group)
Type.create(name: "Recarga de bilhete único", typegroup: type_group)
Type.create(name: "Lugar para cochilar", typegroup: type_group)
Type.create(name: "Aluguel de bike", typegroup: type_group)

type_group = Typegroup.create(name: "Lowest")
Type.create(name: "Lavanderia", typegroup: type_group)
Type.create(name: "Mercado", typegroup: type_group)

type_group = Typegroup.create(name: "Emergências")
Type.create(name: "Hospital", typegroup: type_group)
Type.create(name: "Polícia", typegroup: type_group)
Type.create(name: "Chaveiro", typegroup: type_group)
Type.create(name: "Mecânico", typegroup: type_group)

User.create(name: "Hodoufo", gold: 100000, lvl: 99, motto: "Meowth, é isso aí", xp: 100000, email:"hodoufo@psp.com")
User.create(name: "Nihil", gold: 100000, lvl: 99, motto: "Hodor", xp: 100000, email:"nihil@psp.com")
User.create(name: "Bactac", gold: 100000, lvl: 1337, motto: "\");DROP * TABLES;", xp: 100000, email:"bactac@psp.com")
User.create(name: "Didi", gold: 100000, lvl: 99, motto: "Meowth, é isso aí", xp: 100000, email:"didi@psp.com")
User.create(name: "Ito", gold: 100000, lvl: 99, motto: "Meowth, é isso aí", xp: 100000, email:"ito@psp.com")


Neighborhood.create(name: "Pinheiros", latitude: -23.563004, longitude: -46.686435)
Neighborhood.create(name: "Vila Mariana", latitude: -23.587056, longitude: -46.635744)
Neighborhood.create(name: "Vila Madalena", latitude: -23.551437, longitude: -46.697566)
Neighborhood.create(name: "Itaquera", latitude: -23.563004, longitude: -46.686435)
Neighborhood.create(name: "Moema", latitude: -23.59521, longitude:-46.664491)