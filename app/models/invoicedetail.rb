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
  belongs_to :invoice, foreign_key: "ref@Invoice@invoicedetail", primary_key: "_id"
end
