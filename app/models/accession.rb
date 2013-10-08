class Accession < Artk::Accession

  AGREEMENT_PARAMETERS = [
    "agreementReceived is NULL ",
    "acquisitionType != 'Unknown'",
    "acquisitionType != 'Purchase'",
    "acquisitionType != 'Transfer'",
    "acquisitionType != 'Pre-L&A'",
    "resourceType != 'Gift of'"
  ]

  def self.agreements
    Accession.where(AGREEMENT_PARAMETERS.join(" AND "))
  end

end