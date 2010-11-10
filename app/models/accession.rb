class Accession < ActiveRecord::Base

  set_primary_key 'accessionId'
  set_table_name 'Accessions'
  
  def self.agreements
      connection.execute("SELECT title as 'Title', agreementSent as 'Sent', agreementSentDate as 'Date Sent', agreementReceived as 'Received', agreementReceivedDate as 'Date Received' FROM Accessions WHERE agreementReceived is NULL")
  end

end
