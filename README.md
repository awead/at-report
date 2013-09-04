== Reporting Application for Archivist's Toolkit

Very simple reporting application for connecting to an existing MySQL database
that is running Archivist's Toolkit, and executing pre-defined reports.

== Setup

Create the file config/initializers/at_connect.rb

Enter contents below, with your database, host. etc.

ActiveRecord::Base.establish_connection(
  :adapter  => 'mysql',
  :encoding => 'utf8',
  :database => '',
  :host     => '',
  :username => '',
  :password => ''
)





