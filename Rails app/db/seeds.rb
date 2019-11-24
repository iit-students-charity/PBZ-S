# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = [
    {
        phone_number: '+375332281488',
        name: 'Valeriy',
        surname: 'Jmishenko',
        patronymic: 'Albertovich',
        adress: 'Ukraine, Donbass 14-88'
    },
    {
        phone_number: '+375692281337',
        name: 'Denis',
        surname: 'Petrov',
        patronymic: 'Maskovich',
        adress: 'Russia, Samara 2-28'
    },
    {
        phone_number: '+12345678910',
        name: 'Random',
        surname: 'Word',
        patronymic: 'User',
        adress: 'Belarus, Bereza 4-10'
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

calls = [
    {
        duration: (5.minute.to_i / 60),
        payment_state: false,
        time: 3.hours.ago,
        city: 'Minsk',
        phone_number: '+375332281488'
    },
    {
        duration: (7.minute.to_i / 60),
        payment_state: false,
        time: 1.day.ago + 3.hours,
        city: 'Grodno',
        phone_number: '+375332281488'
    },
    {
        duration: (14.minute.to_i / 60),
        payment_state: false,
        time: 88.day.ago + 3.hours,
        city: 'Grodno',
        phone_number: '+375332281488'
    },
    {
        duration: (14.minute.to_i / 60),
        payment_state: false,
        time: 88.day.ago + 3.hours,
        city: 'Grodno',
        phone_number: '+12345678910'
    },
    {
        duration: (43.minute.to_i / 60),
        payment_state: false,
        time: 4.days.ago,
        city: 'Minsk',
        phone_number: '+12345678910'
    },
    {
        duration: (3.minute.to_i / 60),
        payment_state: false,
        time: 1.week.ago,
        city: 'Minsk',
        phone_number: '+375692281337'
    }
]

tariffs.each do |tariff|
    Tariff.create(tariff)
end

users.each do |user|
    User.create(user)
end

calls.each do |call|
    Call.create(call)
end