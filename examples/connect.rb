require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'mysql',
  :database => 'atk',
  :host=>'boogie.rockhall.org',
  :username => 'railsuser',
    :password => 'password'
)

class Accession < ActiveRecord::Base
  set_primary_key 'accessionId'
  set_table_name 'Accessions'

end
