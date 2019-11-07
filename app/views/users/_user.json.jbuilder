json.extract! user, :id, :phone_number, :name, :surname, :patronymic, :created_at, :updated_at
json.url user_url(user, format: :json)
