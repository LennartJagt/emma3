class Invoicedetail
  include Mongoid::Document
  store_in collection: 'bean@zeist@Invoicedetail'
  field :date, type: String
  field :vetId, type: String
  field :price, type: BigDecimal
  field :vatpercentage, type: BigDecimal
  field :regminequser, type: String
  field :quantity, type: BigDecimal
  field :vat, type: BigDecimal
  field :name, type: String
  field "ref@Invoice@invoicedetail", as: :invoice_id
  belongs_to :invoice, foreign_key: "ref@Invoice@invoicedetail", primary_key: "_id"
  belongs_to :user, foreign_key: "regminequser", primary_key: "_id"
end
