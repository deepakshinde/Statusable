Statusable
==========

gem 'enumerize'


e.g 
    class User
      include MongoMapper::Document
      include MongoMapper::Statusable
      
      statusable!(["pending" , "pause"], "pending")
    end


user = User.new

user.pending?   # => true
user.pause? # => false

user.status = :pause

user.pending?   # => false
user.pause? # => true

