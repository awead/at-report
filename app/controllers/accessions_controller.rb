class AccessionsController < ApplicationController

  def index
  end
  
  def agreements
    a = Accession.new
    @sql = a.get_query
    @results = a.agreements
    
  end


end

