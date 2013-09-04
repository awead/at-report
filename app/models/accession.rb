class Accession < ActiveRecord::Base

  AGREEMENT_PARAMETERS = [
    "agreementReceived is NULL ",
    "acquisitionType != 'Unknown'",
    "acquisitionType != 'Purchase'",
    "acquisitionType != 'Transfer'",
    "acquisitionType != 'Pre-L&A'",
    "resourceType != 'Gift of'"
  ]
  
  def self.table_name
    "Accessions"
  end

  def self.primary_key
    "accessionId"
  end

  def self.agreements
    Accession.where(AGREEMENT_PARAMETERS.join(" AND "))
  end

  # deprecated
  def inventory
    sql = "SELECT DISTINCT title, acquisitionType, resourceType, inventory FROM Accessions WHERE inventory like '%#{query}%'"
    connection.execute(sql)
  end
  
  # deprecated
  def get_query
    sql =   "SELECT DISTINCT title as 'Title', acquisitionType as 'Acquisition Type', resourceType as 'Resource Type', "
    sql <<   "agreementSentDate as 'Date Sent', "
    sql <<   "CASE agreementSent "
    sql <<   "  WHEN 1 THEN 'Yes' "
    sql <<   "  WHEN 0 THEN 'No' " 
    sql <<   "  ELSE 'No' "
    sql <<   "END AS 'Sent', "
    sql <<   "agreementReceived as 'Agreement Received', agreementReceivedDate as 'Date Received' "
    sql <<   "FROM Accessions "
    sql <<   "WHERE agreementReceived is NULL "
    sql <<   "AND acquisitionType != 'Unknown' "
    sql <<   "AND acquisitionType != 'Purchase' "
    sql <<   "AND acquisitionType != 'Transfer' "
    sql <<   "AND acquisitionType != 'Pre-L&A' "
    sql <<   "AND resourceType != 'Gift of' "
    sql <<   "ORDER BY title"
  end


end
