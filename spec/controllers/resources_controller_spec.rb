require 'spec_helper'

describe Artk::ResourcesController do
  render_views

  describe "#index" do
    it "is a listing of finding aids" do
      get :index, :use_route => :artk
      response.body.should =~ /Finding Aids/
      response.body.should =~ /Alan Freed Collection/
    end
  end

  describe "#show" do
    it "is a detailed listing of one finding aid" do
      get :show, :use_route => :artk, :id => "ARC-0006"
      response.body.should =~ /ARC-0006/
      response.body.should =~ /Freed, Judith Fisher/
    end
  end

end