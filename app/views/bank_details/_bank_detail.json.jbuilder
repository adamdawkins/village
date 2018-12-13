json.extract! bank_detail, :id, :address_1, :postcode, :sort_code, :account_number, :sponsor_id, :created_at, :updated_at
json.url bank_detail_url(bank_detail, format: :json)
