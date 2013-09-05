class AccessionsController < ApplicationController

  def index
  end

  def agreements
    @results = Accession.agreements.select(:title, :acquisitionType, :resourceType, :agreementSentDate, :agreementSent).distinct
  end

  def inventory
    @results = Accession.where("inventory LIKE ?", ("%" + params[:q] + "%")).select(:title, :acquisitionType, :resourceType).distinct
  end

end

