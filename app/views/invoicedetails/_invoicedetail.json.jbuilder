json.extract! invoicedetail, :id, :date, :vetId, :price, :vatpercentage, :regminequser, :quantity, :vat, :name, :created_at, :updated_at
json.url invoicedetail_url(invoicedetail, format: :json)
