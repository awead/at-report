require 'spec_helper'

describe AccessionsController do

  describe "#index" do

    it "should render the index page" do
      get :index
      assert_response :success
    end

  end

  describe "agreements" do

  end


  
end