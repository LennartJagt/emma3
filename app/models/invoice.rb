class Invoice
  include Mongoid::Document
  store_in collection: 'bean@zeist@Invoice'
  field :purchaseinvoice, type:Boolean
  field :createtimestamp, type:Integer
  field :date, type: String
  field :number, type: String
  field :amount, type: BigDecimal
  field :vat, type: BigDecimal
  field "ref@Client@invoice", as: :client_id
  has_many :invoicedetails, foreign_key: "ref@Invoice@invoicedetail", primary_key: "_id"
  belongs_to :client, foreign_key:"ref@Client@invoice" , primary_key: "_id"
  accepts_nested_attributes_for :invoicedetails, allow_destroy: true
end
