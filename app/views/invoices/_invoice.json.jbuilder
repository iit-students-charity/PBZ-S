json.extract! invoice, :id, :user_id, :price, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
