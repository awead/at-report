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

end