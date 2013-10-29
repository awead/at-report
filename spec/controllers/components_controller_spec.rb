require 'spec_helper'

describe Artk::ComponentsController do
  render_views

  describe "#index" do
    it "is a listing of components in a finding aid" do
      get :index, :use_route => :artk, :resource_id => "ARC-0006"
      response.body.should =~ /Components for ARC-0006/
      response.body.should =~ /Cancelled checks/
    end
  end

  describe "#show" do
    it "is a detailed display of a series component" do
      get :show, :use_route => :artk, :resource_id => "ARC-0006", :id => "ref198"
      response.body.should =~ /ref198/
      response.body.should =~ /Cancelled checks/
    end
  end

end