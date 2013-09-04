class AccessionsController < ApplicationController

  def index
  end

  def agreements
    @results = Accession.agreements
  end

  def inventory
    Accession.where("inventory LIKE ?", params[:q])
  end

end

