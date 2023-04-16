# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# user = User.create(username: nil, password: nil)
#
# user = User.find(user)
# user.add_role :admin
# user.has_role? :admin
#
# user.add_role? :manager
# user.has_role? :manager
#
# user.add_role? :employee
# user.has_role? :employee

puts 'Brand car'
path = File.join(File.dirname(__FILE__), "./seeds/brand_car.json")
records = JSON.parse(File.read(path))
records.each do |record|
  puts record.inspect
  puts data = { code: record['codigo'], name: record['nome'], kind: 1 }
  Brand.create(data)
end

puts 'Brand moto'
path = File.join(File.dirname(__FILE__), "./seeds/brand_moto.json")
records = JSON.parse(File.read(path))
records.each do |record|
  puts record.inspect
  puts data = { code: record['codigo'], name: record['nome'], kind: 2 }
  Brand.create(data)
end

puts 'Brand truck'
path = File.join(File.dirname(__FILE__), "./seeds/brand_truck.json")
records = JSON.parse(File.read(path))
records.each do |record|
  puts record.inspect
  puts data = { code: record['codigo'], name: record['nome'], kind: 3 }
  Brand.create(data)
end

require 'open-uri'

puts 'Country'

Country.destroy_all

country_list = [
  ["Abuja", "Abuja", "Abuja"],
  ["Afeganistão", "Afghanistan", "Afganistán"],
  ["Akrotiri", "Akrotiri", "Akrotiri"],
  ["Albânia", "Albania", "Albania"],
  ["Argélia", "Algeria", "Argelia"],
  ["Samoa Americana", "American Samoa", "American Samoa"],
  ["Andorra", "Andorra", "Andorra"],
  ["Angola", "Angola", "Angola"],
  ["Anguilla", "Anguilla", "Anguilla"],
  ["Antarctica", "Antarctica", "La Antártida"],
  ["Antigua", "Antigua", "Antigua"],
  ["Argentina", "Argentina", "Argentina"],
  ["Armenia", "Armenia", "Armenia"],
  ["Aruba", "Aruba", "Aruba"],
  ["Ashmore e Cartier Ilhas", "Ashmore and Cartier Islands", "Islas Ashmore y Cartier"],
  ["Australia", "Australia", "Australia"],
  ["Áustria", "Austria", "Austria"],
  ["Azerbaijão", "Azerbaijan", "Azerbaiyán"],
  ["Bahrain", "Bahrain", "Bahrein"],
  ["Bangladesh", "Bangladesh", "Bangladesh"],
  ["Barbados", "Barbados", "Barbados"],
  ["Belarus", "Belarus", "Bielorrusia"],
  ["Bélgica", "Belgium", "Bélgica"],
  ["Belize", "Belize", "Belice"],
  ["Benin", "Benin", "Benin"],
  ["Bermuda", "Bermuda", "Bermudas"],
  ["Butão", "Bhutan", "Bhutan"],
  ["Bolívia", "Bolivia", "Bolivia"],
  ["Bósnia e Herzegovina", "Bosnia and Herzegovina", "Bosnia y Herzegovina"],
  ["Botswana", "Botswana", "Botswana"],
  ["Brasil", "Brazil", "Brasil"],
  ["British Virgin Islands", "British Virgin Islands", "Virgin Islands British"],
  ["Brunei", "Brunei", "Brunei"],
  ["Bulgária", "Bulgaria", "Bulgaria"],
  ["Burkina Faso", "Burkina Faso", "Burkina Faso"],
  ["Burundi", "Burundi", "Burundi"],
  ["Canadá", "Canada", "Canadá"],
  ["Cambodia", "Cambodia", "Camboya"],
  ["Camarões", "Cameroon", "Camerún"],
  ["Cabo Verde", "Cape Verde", "Cabo Verde"],
  ["Ilhas Cayman", "Cayman Islands", "Islas Caimán"],
  ["Africano República Central", "Central African Republic", "República Centroafricana"],
  ["Chad", "Chad", "Chad"],
  ["Chile", "Chile", "Chile"],
  ["China", "China", "China"],
  ["Colômbia", "Colombia", "Colombia"],
  ["Comores", "Comoros", "Comoras"],
  ["Costa Rica", "Costa Rica", "Costa Rica"],
  ["Cote d'Ivoire", "Cote d'Ivoire", "Costa de Marfil"],
  ["Croácia", "Croatia", "Croacia"],
  ["Cuba", "Cuba", "Cuba"],
  ["Curaçao", "Curacao", "Curazao"],
  ["Chipre", "Cyprus", "Chipre"],
  ["República Checa", "Czech Republic", "República Checa"],
  ["República Democrática do Congo", "Democratic Republic Congo", "República Democrática del Congo"],
  ["Dinamarca", "Denmark", "Dinamarca"],
  ["Djibouti", "Djibouti", "Djibouti"],
  ["Dominica", "Dominica", "Dominica"],
  ["República Dominicana", "Dominican Republic", "República Dominicana"],
  ["Equador", "Ecuador", "Ecuador"],
  ["Egito", "Egypt", "Egipto"],
  ["El Salvador", "El Salvador", "El Salvador"],
  ["Guiné Equatorial", "Equatorial Guinea", "Guinea Ecuatorial"],
  ["Eritreia", "Eritrea", "Eritrea"],
  ["Estonia", "Estonia", "Estonia"],
  ["Etiópia", "Ethiopia", "Etiopía"],
  ["Ilhas Malvinas", "Falkland Islands", "Islas Malvinas"],
  ["Ilhas Faroe", "Faroe Islands", "Islas Feroe"],
  ["Estados Federados da Micronésia", "Federated States of Micronesia", "Los Estados Federados de Micronesia"],
  ["Fiji", "Fiji", "Fiji"],
  ["Finlândia", "Finland", "Finlandia"],
  ["França", "France", "Francia"],
  ["Guiana Francesa", "French Guiana", "Guyana"],
  ["Polinésia Francesa", "French Polynesia", "Polinesia Francesa"],
  ["Gabão", "Gabon", "Gabón"],
  ["Georgia", "Georgia", "Georgia"],
  ["Alemanha", "Germany", "Alemania"],
  ["Gana", "Ghana", "Ghana"],
  ["Gibraltar", "Gibraltar", "Gibraltar"],
  ["Grécia", "Greece", "Grecia"],
  ["Greenland", "Greenland", "Groenlandia"],
  ["Granada", "Grenada", "Granada"],
  ["Guatemala", "Guatemala", "Guatemala"],
  ["Guiné", "Guinea", "Guinea"],
  ["Guiné-Bissau", "Guinea-Bissau", "Guinea-Bissau"],
  ["Guiana", "Guyana", "Guyana"],
  ["Haiti", "Haiti", "Haití"],
  ["Honduras", "Honduras", "Honduras"],
  ["Hong Kong", "Hong Kong", "Hong Kong"],
  ["Hungria", "Hungary", "Hungría"],
  ["Islândia", "Iceland", "Islandia"],
  ["Índia", "India", "India"],
  ["Indonésia", "Indonesia", "Indonesia"],
  ["Irã", "Iran", "Irán"],
  ["Iraque", "Iraq", "Irak"],
  ["Ireland", "Ireland", "Irlanda"],
  ["Israel", "Israel", "Israel"],
  ["Itália", "Italy", "Italia"],
  ["Jamaica", "Jamaica", "Jamaica"],
  ["Japão", "Japan", "Japón"],
  ["Jordan", "Jordan", "Jordan"],
  ["Kazakhstan", "Kazakhstan", "Kazajstán"],
  ["Kenya", "Kenya", "Kenia"],
  ["Kiribati", "Kiribati", "Kiribati"],
  ["Kuwait", "Kuwait", "Kuwait"],
  ["Quirguistão", "Kyrgyzstan", "Kirguistán"],
  ["Lagos", "Lagos", "Lagos"],
  ["Latvia", "Latvia", "Letonia"],
  ["Líbano", "Lebanon", "Líbano"],
  ["Lesotho", "Lesotho", "Lesotho"],
  ["Libéria", "Liberia", "Liberia"],
  ["Líbia", "Libya", "Libia"],
  ["Liechtenstein", "Liechtenstein", "Liechtenstein"],
  ["Lituânia", "Lithuania", "Lituania"],
  ["Luxemburgo", "Luxembourg", "Luxemburgo"],
  ["Macau", "Macau", "Macao"],
  ["Macedônia", "Macedonia", "Macedonia"],
  ["Madagascar", "Madagascar", "Madagascar"],
  ["Malawi", "Malawi", "Malawi"],
  ["Malásia", "Malaysia", "Malasia"],
  ["Maldivas", "Maldives", "Maldivas"],
  ["Mali", "Mali", "Mali"],
  ["Malta", "Malta", "Malta"],
  ["Ilhas Marshall", "Marshall Islands", "Islas Marshall"],
  ["Martinica", "Martinique", "Martinica"],
  ["Mauritânia", "Mauritania", "Mauritania"],
  ["Mauritius", "Mauritius", "Mauricio"],
  ["México", "Mexico", "México"],
  ["Moldávia", "Moldova", "Moldavia"],
  ["Monaco", "Monaco", "Monaco"],
  ["Mongólia", "Mongolia", "Mongolia"],
  ["Marrocos", "Morocco", "Marruecos"],
  ["Moçambique", "Mozambique", "Mozambique"],
  ["Mianmar", "Myanmar", "Myanmar"],
  ["Namíbia", "Namibia", "Namibia"],
  ["Nauru", "Nauru", "Nauru"],
  ["Nepal", "Nepal", "Nepal"],
  ["Países Baixos", "Netherlands", "Países Bajos"],
  ["Antilhas Holandesas", "Netherlands Antilles", "Antillas Holandesas"],
  ["Nova Zelândia", "New Zealand", "Nueva Zelanda"],
  ["Nicarágua", "Nicaragua", "Nicaragua"],
  ["Niger", "Niger", "Níger"],
  ["Nigéria", "Nigeria", "Nigeria"],
  ["Coréia Do Norte", "North Korea", "Corea Del Norte"],
  ["Irlanda do Norte", "Northern Ireland", "Irlanda del Norte"],
  ["Northern Mariana Islands", "Northern Mariana Islands", "Northern Mariana Islands"],
  ["Noruega", "Norway", "Noruega"],
  ["Omã", "Oman", "Omán"],
  ["Paquistão", "Pakistan", "Pakistán"],
  ["Palau", "Palau", "Palau"],
  ["Panama", "Panama", "Panamá"],
  ["Papua Nova Guiné", "Papua New Guinea", "Papúa Nueva Guinea"],
  ["Paraguai", "Paraguay", "Paraguay"],
  ["Peru", "Peru", "Perú"],
  ["Filipinas", "Philippines", "Filipinas"],
  ["Polônia", "Poland", "Polonia"],
  ["Portugal", "Portugal", "Portugal"],
  ["Qatar", "Qatar", "Qatar"],
  ["República do Congo", "Republic of the Congo", "República del Congo"],
  ["Romania", "Romania", "Rumania"],
  ["Rússia", "Russia", "Rusia"],
  ["Rwanda", "Rwanda", "Ruanda"],
  ["São Cristóvão e Nevis", "Saint Kitts and Nevis", "San Cristóbal y Nieves"],
  ["São Vicente e Granadinas", "Saint Vincent and the Grenadines", "San Vicente y las Granadinas"],
  ["Samoa", "Samoa", "Samoa"],
  ["San Marino", "San Marino", "San Marino"],
  ["São Tomé e Príncipe", "Sao Tome and Principe", "Santo Tomé y Príncipe"],
  ["Arábia Saudita", "Saudi Arabia", "Arabia Saudita"],
  ["Senegal", "Senegal", "Senegal"],
  ["Sérvia e Montenegro", "Serbia and Montenegro", "Serbia y Montenegro"],
  ["Seychelles", "Seychelles", "Seychelles"],
  ["Serra Leoa", "Sierra Leone", "Sierra Leona"],
  ["Cingapura", "Singapore", "Singapur"],
  ["Eslováquia", "Slovakia", "Eslovaquia"],
  ["Slovenia", "Slovenia", "Eslovenia"],
  ["Ilhas Salomão", "Solomon Islands", "Islas Salomón"],
  ["Somália", "Somalia", "Somalia"],
  ["África do Sul", "South Africa", "Sudáfrica"],
  ["Coreia do Sul", "South Korea", "Corea del Sur"],
  ["Espanha", "Spain", "España"],
  ["Sri Lanka", "Sri Lanka", "Sri Lanka"],
  ["St. Lucia", "St. Lucia", "Santa Lucía"],
  ["Sudão", "Sudan", "Sudán"],
  ["Suriname", "Suriname", "Suriname"],
  ["Suazilândia", "Swaziland", "Swazilandia"],
  ["Suécia", "Sweden", "Suecia"],
  ["Suíça", "Switzerland", "Suiza"],
  ["Síria", "Syria", "Siria"],
  ["Taiwan", "Taiwan", "Taiwan"],
  ["Tajiquistão", "Tajikistan", "Tayikistán"],
  ["Tanzânia", "Tanzania", "Tanzania"],
  ["Tailândia", "Thailand", "Tailandia"],
  ["Bahamas", "The Bahamas", "Las Bahamas"],
  ["Gâmbia", "The Gambia", "Gambia"],
  ["Timor-Leste", "Timor-Leste", "Timor Oriental"],
  ["Togo", "Togo", "Togo"],
  ["Tonga", "Tonga", "Tonga"],
  ["Trinidad e Tobago", "Trinidad and Tobago", "Trinidad y Tobago"],
  ["Tunísia", "Tunisia", "Túnez"],
  ["Peru", "Turkey", "Pavo"],
  ["Turcomenistão", "Turkmenistan", "Turkmenistán"],
  ["Tuvalu", "Tuvalu", "Tuvalu"],
  ["US Virgin Islands", "US Virgin Islands", "US Virgin Islands"],
  ["Uganda", "Uganda", "Uganda"],
  ["Ucrânia", "Ukraine", "Ucrania"],
  ["Emirados Árabes Unidos", "United Arab Emirates", "Emiratos Árabes Unidos"],
  ["Reino Unido", "United Kingdom", "Reino Unido"],
  ["Estados Unidos", "United States", "Estados Unidos"],
  ["Uruguai", "Uruguay", "Uruguay"],
  ["Usbequistão", "Uzbekistan", "Uzbekistán"],
  ["Vanuatu", "Vanuatu", "Vanuatu"],
  ["Cidade do Vaticano", "Vatican City", "Ciudad del Vaticano"],
  ["Venezuela", "Venezuela", "Venezuela"],
  ["Vietnam", "Vietnam", "Vietnam"],
  ["Wales", "Wales", "País de Gales"],
  ["Cisjordânia e Gaza", "West Bank and Gaza", "Cisjordania y Gaza"],
  ["Sahara Ocidental", "Western Sahara", "Sahara Occidental"],
  ["Yemen", "Yemen", "Yemen"],
  ["Zâmbia", "Zambia", "Zambia"],
  ["Zimbabwe", "Zimbabwe", "Zimbabwe"],
]

country_list.each do |row|
  name_pt_BR, name_en, name_es = row
  Country.create(:name_pt_BR => name_pt_BR, :name_en => name_en, :name_es => name_es)
end

State.destroy_all
puts 'end country'
puts 'States'

state_list = [
  ["31", "12", "AC", "Acre", "Acre", "Acre"],
  ["31", "27", "AL", "Alagoas", "Alagoas", "Alagoas"],
  ["31", "16", "AP", "Amapá", "Amapá", "Amapá"],
  ["31", "13", "AM", "Amazonas", "Amazonas", "Amazonas"],
  ["31", "29", "BA", "Bahia", "Bahia", "Bahia"],
  ["31", "23", "CE", "Ceará", "Ceará", "Ceará"],
  ["31", "53", "DF", "Distrito Federal", "Distrito Federal", "Distrito Federal"],
  ["31", "32", "ES", "Espírito Santo", "Espírito Santo", "Espírito Santo"],
  ["31", "52", "GO", "Goiás", "Goiás", "Goiás"],
  ["31", "21", "MA", "Maranhão", "Maranhão", "Maranhão"],
  ["31", "51", "MT", "Mato Grosso", "Mato Grosso", "Mato Grosso"],
  ["31", "50", "MS", "Mato Grosso do Sul", "Mato Grosso do Sul", "Mato Grosso do Sul"],
  ["31", "31", "MG", "Minas Gerais", "Minas Gerais", "Minas Gerais"],
  ["31", "41", "PR", "Paraná", "Paraná", "Paraná"],
  ["31", "25", "PB", "Paraíba", "Paraíba", "Paraíba"],
  ["31", "15", "PA", "Pará", "Pará", "Pará"],
  ["31", "26", "PE", "Pernambuco", "Pernambuco", "Pernambuco"],
  ["31", "22", "PI", "Piauí", "Piauí", "Piauí"],
  ["31", "33", "RJ", "Rio de Janeiro", "Rio de Janeiro", "Rio de Janeiro"],
  ["31", "24", "RN", "Rio Grande do Norte", "Rio Grande do Norte", "Rio Grande do Norte"],
  ["31", "43", "RS", "Rio Grande do Sul", "Rio Grande do Sul", "Rio Grande do Sul"],
  ["31", "11", "RO", "Rondônia", "Rondônia", "Rondônia"],
  ["31", "14", "RR", "Roraima", "Roraima", "Roraima"],
  ["31", "42", "SC", "Santa Catarina", "Santa Catarina", "Santa Catarina"],
  ["31", "28", "SE", "Sergipe", "Sergipe", "Sergipe"],
  ["31", "35", "SP", "São Paulo", "São Paulo", "São Paulo"],
  ["31", "17", "TO", "Tocantins", "Tocantins", "Tocantins"],

]

state_list.each do |row|
  country_id, code_ibge, abbreviation, name_pt_BR, name_en, name_es = row
  State.create(:country_id => country_id, :code_ibge => code_ibge, :abbreviation => abbreviation, :name_pt_BR => name_pt_BR, :name_en => name_en, :name_es => name_es)
end

puts 'end states'
puts 'Cities'

City.destroy_all

URI.open("https://gist.githubusercontent.com/gilcierweb/a97908b2bba6117dde38/raw/59e5b467f10693511b02ad4ed53b43508b2984c0/cidadesBrasilerias.yml") do |cities|
  cities.read.each_line do |city|
    country_id, state_id, code_ibge_state, code_ibge, name_pt_BR = city.chomp.split("|")
    # name_pt_BR = name_pt_BR.force_encoding("iso-8859-1").encode("UTF-8") #caso venha com erro de encoding
    City.create!(:state_id => state_id, :code_ibge => code_ibge, :name_pt_BR => name_pt_BR, :name_en => name_pt_BR, :name_es => name_pt_BR)
  end
end

puts 'end cities'

puts 'Inspections'

100.times {

  address_full = Faker::Address.full_address
  motive_apprehension = Faker::Lorem.sentence
  neighborhood = Faker::Address.community
  observations = Faker::Lorem.paragraph
  user_id = 1

  data_inspection = {
    address_full: address_full,
    motive_apprehension: motive_apprehension,
    neighborhood: neighborhood,
    observations: observations,
    user_id: user_id
  }

  inspection = Inspection.create!(data_inspection)

  full_name = Faker::Name.name
  nickname = Faker::Internet.username(specifier: full_name)
  cpf = Faker::IDNumber.brazilian_citizen_number
  qualified = Faker::Boolean.boolean

  data_conductor = {
    full_name: full_name,
    nickname: nickname,
    cpf: cpf,
    qualified: qualified,
    inspection_id: inspection.id
  }

  conductor = Conductor.create!(data_conductor)

  kind = Faker::Number.between(from: 1, to: 3) # Faker::Vehicle.car_type
  brand = Faker::Vehicle.make
  # brand_db = Brand.where(id: random_number_state)
  brand_id = Faker::Number.between(from: 1, to: 93)
  model = Faker::Vehicle.model(make_of_model: brand)
  color = Faker::Vehicle.color
  plate = Faker::Vehicle.license_plate
  tachometer = Faker::Vehicle.mileage(min: 10000, max: 100000)
  chassi = Faker::Vehicle.vin
  engine_number = Faker::Vehicle.engine
  random_number_state = Faker::Number.between(from: 1, to: 27)
  city = City.where(state_id: random_number_state)
  random_number_city = Faker::Number.between(from: city.first.id, to: city.last.id)
  state_id = random_number_state # Faker::Address.state_abbr
  city_id = random_number_city # Faker::Address.city

  data_vehicles = {
    kind: kind,
    brand_id: brand_id,
    model: model,
    color: color,
    plate: plate,
    tachometer: tachometer,
    chassi: chassi,
    engine_number: engine_number,
    state_id: state_id,
    city_id: city_id,
    conductor_id: conductor.id
  }


  vehicle = Vehicle.create!(data_vehicles)
}
Vehicle.update_all(kind: 1)
