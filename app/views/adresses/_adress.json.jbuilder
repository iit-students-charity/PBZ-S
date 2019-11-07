json.extract! adress, :id, :city, :street, :house, :flat, :user_id, :created_at, :updated_at
json.url adress_url(adress, format: :json)
