require File.dirname(__FILE__) + '/../../spec_helper'

describe "legislators/show.html.erb" do
  
  before(:each) do
    @legislator = Factory(:legislator)
    assigns[:legislator] = @legislator
  end
  
  it "shows a legislator's name" do
    render "legislators/show.html.erb"
    response.should contain("#{@legislator.first_name} #{@legislator.last_name}")
  end
  
  it "shows a legislators address" do
    render "legislators/show.html.erb"
    response.should contain("#{@legislator.address1}") 
    response.should contain("#{@legislator.address2}")
    response.should contain("#{@legislator.town}")
    response.should contain("#{@legislator.state}")
    response.should contain("#{@legislator.zip}")
    response.should contain("#{@legislator.zip4}")
  end
  
  
end