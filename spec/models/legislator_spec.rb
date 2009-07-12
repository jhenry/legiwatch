require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Legislator do
  before(:each) do
    @legislator = Legislator.new(:first_name => "Bob",:last_name => "Dobbs")
  end
  describe "validations" do
    it "should be valid with valid attributes" do
      @legislator.should be_valid
    end
    
    it "should should not be valid without a first_name" do
      @legislator.first_name = nil
      @legislator.should_not be_valid
    end
    
    it "should not be valid without a last_name" do
      @legislator.last_name = nil
      @legislator.should_not be_valid
    end
      
    
  end
end

