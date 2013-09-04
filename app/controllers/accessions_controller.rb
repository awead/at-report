class AccessionsController < ApplicationController

  def index
  end

  def agreements
    @results = Accession.agreements
  end

  def inventory
    @results = Accession.where("inventory LIKE ?", params[:q]).distinct
  end

end

