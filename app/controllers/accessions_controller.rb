class AccessionsController < ApplicationController

  def index
  end

  def agreements
    @results = Accession.agreements
  end

  def inventory
    a = Accession.new
    if params[:q]
      #@sql = a.search_inventory(params[:q])
      @results = a.inventory(params[:q])
    else
      @results = nil
    end
  end

end

