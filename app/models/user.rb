class User
  include Mongoid::Document
  store_in collection: "bean@zeist@User"
  field :firstname, type:String
  field :shortcode, type:String
  field :lastname, type:String
  field :location, type:Integer
  field :username, type:String
  field :active, type:Boolean
  
  has_many :invoicedetails, foreign_key: "regminequser", primary_key: "_id"
end
