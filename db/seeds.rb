# Criando nossos Users --- OBS: Depois que adicionarmos o devise precisamos incluir o email e senha dos users
User.create name: 'José', status: :active, kind: :salesman, email: 'salesman@teste.com', password: 123456
User.create name: 'Manuel', status: :active, kind: :salesman, email: 'salesman2@teste.com', password: 123456
User.create name: 'Marcos', status: :active, kind: :manager, email: 'manager@teste.com', password: 123456


# Criando alguns produtos de exemplo

20.times do
    Product.create(
        name: Faker::Device.model_name, 
        description: Faker::Lorem.sentence(word_count: 3, supplemental: false, 
        random_words_to_add: 4), 
        status: ['active', 'inactive'].sample, 
        price: rand(20..10000)
    ) 
end
 
# Criando um desconto de exemplo
Discount.create name: 'Desconto carnaval', description: 'Aplique esse desconto no carnaval', value: '10', kind: :porcent, status: :active
Discount.create name: 'Desconto carnaval dinheiro', description: 'Aplique esse desconto quando possível', value: '10', kind: :money, status: :active
 
# Crindo client
50.times do
    Client.create(
        name: Faker::FunnyName.two_word_name, 
        company_name: Faker::Company.name, 
        document: rand(1..1000), 
        email: Faker::Internet.email(domain: 'example'), 
        user: User.first(3).sample
    ) 
end
