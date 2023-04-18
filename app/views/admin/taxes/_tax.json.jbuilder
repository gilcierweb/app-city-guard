json.extract! tax, :id, :amount, :kind, :status, :user_id, :created_at, :updated_at
json.url tax_url(tax, format: :json)
