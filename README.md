Statusable
==========
require gem 'enumerize'
model add 

include MongoMapper::Statusable


statusable!(Array/Hash, default_option)

statusable base object that can be included in any model class to add a status field for mongo mapper
