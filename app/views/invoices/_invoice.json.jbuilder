json.extract! invoice, :id, :date, :number, :amount, :vat, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
