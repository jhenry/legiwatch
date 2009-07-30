require "couch_foo"

CouchFoo::Base.set_database(:host => "http://localhost:5984", :database => "legiwatch-dev")
CouchFoo::Base.logger = Rails.logger
