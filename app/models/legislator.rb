class Legislator < CouchFoo::Base
  
  property :first_name, String
  property :last_name, String
  property :address1, String
  property :address2, String
  property :town, String
  property :state, String
  property :zip, String
  property :zip4, String
  property :created_at, DateTime
  property :updated_at, DateTime
  
  validates_presence_of :first_name  
  validates_presence_of :last_name  
end
