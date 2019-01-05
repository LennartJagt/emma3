class Client
  include Mongoid::Document
  store_in collection: "bean@zeist@Client"
  field :date, type: String
  field :birthdate, type: String
  field :isclientof, type: String
  field :active, type: Boolean
  field :lastname, type: String
  field :firstname, type: String
  field :title, type: String
  field :callname, type: String
  field :email, type: String
  field :warning, type: String
  has_many :invoices, foreign_key:"ref@Client@invoice" ,primary_key: "_id"
end
