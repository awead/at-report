class AccessionsController < ApplicationController

  def index
    a = Accession.new
    @sql = a.get_query
    @results = a.agreements
    
  end


end

