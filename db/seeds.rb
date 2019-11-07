# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

adresses = [
    {
        city: 'Bereza',
        street: 'Komsomolskaya',
        house: '4',
        flat: '10',
        user_id: 1
    },
    {
        city: 'Minsk',
        street: 'Vikentiya Karpovicha',
        house: '2',
        flat: '51',
        user_id: 2
    },
    {
        city: 'Minsk',
        street: 'Anharskaya',
        house: '58',
        flat: '34',
        user_id: 3
    }
]

users = [
    {
        phone_number: '+375332281488',
        name: 'Valeriy',
        surname: 'Jmishenko',
        patronymic: 'Albertovich'
    },
    {
        phone_number: '+375692281337',
        name: 'Denis',
        surname: 'Petrov',
        patronymic: 'Maskovich'
    },
    {
        phone_number: '+12345678910',
        name: 'Random',
        surname: 'Word',
        patronymic: 'User'
    }
]

tariffs = [
    {
        city: 'Minsk',
        price: 4.99,
        special_price: 3,
        expire_date: Time.zone.now + 30.days
    },
    {
        city: 'Vitebsk',
        price: 4,
        special_price: 2.5,
        expire_date: Time.zone.now + 30.days
    },
    {
        city: 'Brest',
        price: 4.5,
        special_price: 3,
        expire_date: Time.zone.now + 30.days
    },
    {
        city: 'Gomel',
        price: 6,
        special_price: 4,
        expire_date: Time.zone.now + 30.days
    },
    {
        city: 'Mogilev',
        price: 8.75,
        special_price: 6.25,
        expire_date: Time.zone.now + 30.days
    },
    {
        city: 'Grodno',
        price: 0.75,
        special_price: 0.5,
        expire_date: Time.zone.now + 30.days
    }
]

tariffs.each do |tariff|
    Tariff.create(tariff)
end

users.each do |user|
    User.create(user)
end

adresses.each do |adress|
    Adress.create(adress)
end
