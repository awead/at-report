require 'spec_helper'

describe AccessionsController do

  describe "#index" do
    it "should render the index page" do
      get :index
      assert_response :success
    end
  end

  describe "#agreements" do
    it "should render a page of agreements" do
      get :agreements
      assert_response :success
    end
  end

  describe "#inventory" do
    it "should search for an item in the inventory" do
      get :inventory, :q => "foo"
      assert_response :success
    end
  end

end