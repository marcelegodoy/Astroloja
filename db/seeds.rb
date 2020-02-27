# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# states_array = ["Acre", "Alagoas", "Amapá", "Amazonas", "Bahia", "Ceará", "Distrito Federal", "Espírito Santo", "Goiás", "Maranhão", "Mato Grosso", "Mato Grosso do Sul", "Minas Gerais", "Pará", "Paraíba", "Paraná", "Pernambuco", "Piauí", "Rio de Janeiro", "Rio Grande do Norte", "Rio Grande do Sul", "Rondônia", "Roraima", "Santa Catarina", "São Paulo", "Sergipe", "Tocantins"]

# states_array.each do |state_br|
#   State.create(name: state_br)
# end

# categories_array = ["Orixás", "Tarot de Marselha", "Búzios", "Trabalho de Magias", "Numerologia", "Orações", "Simpatias", "Magia Branca", "Cartomante", "Mapa Astral", "Baralho Cigano", "Quiromancia", "Florais", "Cromoterapia", "Magia Negra", "Reiki", "Umbanda", "Tarot Egípcio", "Paganismo", "Vidência", "Ciências Ocultas", "Wicca", "Sinastria", "Horóscopo Chinês", "Horóscopo", "Xamanismo", "Ocultismo", "Metafísica"]

# categories_array.each do |category_service|
#   Category.create(name: category_service)
# end

# User.create(name: "Luiza", email:"teste@gmail.com", password:"123123")


Service.create(name: "A melhor mãe de santo", description: "Mãe Valeria de nazaré possui mais de 20 anos de experiencia no ramo esotérico! Orientada na África nas sete matas realiza trabalhos guiada pelos Orixás Africanos! Busque ajuda para lidar com os dilemas que aparecem em seu caminho! Conte com Trabalhos Espirituais para afastar rivais e amantes, liberte-se do mau-agouro que paira sobre sua vida e traga seu amor de volta!", price: 50.00, city: "Salvador", state_id: 5, category_id: 17, user_id: 1)

Service.create(name: "Amarração Dominadora", description: "Não se deixe abalar pelos problemas da sua vida! Aprenda a lidar com eles e melhore seus dias, se redescubra e traga mais cor e sentido para tudo que esta vivendo! Você não está sozinha(o)! Você pode mudar completamente sua vida, recomece algo novo!", price: 45.50, city: "Goiânia", state_id: 9, category_id: 15, user_id: 1)

Service.create(name: "Trabalho amarração e pactos Riqueza", description: "Trabalhos fortes de Amarração de amor,e FORTUNA IMEDIATA, união definitiva de casais, afastamento de rivais, ritual de sedução fatal(a pessoa fica irresistível aos olhos de todos). Ritual de fortuna com pacto, quer ficar rico e poderoso? ter muito dinheiro? Resultados em 24 hs GARANTIDO!!! Fazemos ritual de ligação do seu amor, assim que contratar o trabalho já terá esse ritual.", price: 47.00, city: "São Paulo", state_id: 25, category_id: 27, user_id: 1)
