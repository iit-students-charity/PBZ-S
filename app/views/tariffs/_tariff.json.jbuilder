json.extract! tariff, :id, :city, :price, :special_price, :duration, :expire_date, :created_at, :updated_at
json.url tariff_url(tariff, format: :json)
