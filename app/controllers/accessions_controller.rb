class AccessionsController < ApplicationController

  def index
  end
  
  def agreements
    @results = Accession.agreements
    
  end


end

