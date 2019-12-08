# README

Для успешного запуска спизженного кода вам необходимо иметь на своем устройстве:

1) Ruby 2.6.4
2) PostgreSQL

Инструкции по установке и запуску:
> Если у вас настроены ключи SSH
* Запускаем `git clone git@github.com:mirterious/PBZ-2.git`;
> Иначе
* Запускаем `git clone https://github.com/mirterious/PBZ-2.git`;
* Заходим в папку PBZ-2;
* Запускаем `bundle install`;
* Запускаем `rails db:create && rails db:migrate && rails db:seed`;
* Запускаем `rails s`;
* Открываем браузер и в строку поиска вводим `http://localhost:3000/`;

Пользуемся
