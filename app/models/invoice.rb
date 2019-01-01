class Invoice
  include Mongoid::Document
  store_in collection: 'bean@zeist@Invoice'
  field :date, type: String
  field :number, type: String
  field :amount, type: BigDecimal
  field :vat, type: BigDecimal
  has_many :invoicedetails, foreign_key: "ref@Invoice@invoicedetail", primary_key: "_id"
  accepts_nested_attributes_for :invoicedetails, allow_destroy: true
end
