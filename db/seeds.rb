# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
states_array = ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]

states_array.each do |state_br|
  State.create(name: state_br)
end

categories_array = ["Orixás", "Tarot de Marselha", "Búzios", "Trabalho de Magias", "Numerologia", "Orações", "Simpatias", "Magia Branca", "Cartomante", "Mapa Astral", "Baralho Cigano", "Quiromancia", "Florais", "Cromoterapia", "Magia Negra", "Reiki", "Umbanda", "Tarot Egípcio", "Paganismo", "Vidência", "Ciências Ocultas", "Wicca", "Sinastria", "Horóscopo Chinês", "Horóscopo", "Xamanismo", "Ocultismo", "Metafísica"]

categories_array.each do |category_service|
  Category.create(name: category_service)
end
