require 'spec_helper'

describe Accession do

  it "should have a custom table name" do
    Accession.table_name.should == "Accessions"
  end

  it "should have a custom primary key" do
    Accession.primary_key.should == "accessionId"
  end

  describe "::agreements" do

    before :each do
      @agreements = Accession.agreements
    end

    it "should return an array of agreements" do
      @agreements.first.should be_kind_of Accession
    end

  end

end