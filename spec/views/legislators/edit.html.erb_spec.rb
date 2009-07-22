require File.dirname(__FILE__) + '/../../spec_helper'

describe "legislators/edit.html.erb" do
  before(:each) do
    @legislator = mock_model(Legislator, :first_name => 'steve', :last_name => 'mcnair', :address1 => "21 Oak Street", :address2 => "Apt. 4", :town => "Anytown", :state => "ME", :zip => "04102", :zip4 => "1234")
    assigns[:legislator] = @legislator
    render "legislators/edit.html.erb"
  end
  
  it "renders a form to edit a legislator" do
     
     response.should have_selector("form[method=post]", :action => legislator_path(@legislator)) do |form|
       form.should have_selector("input[type=submit]")
     end
   end
  
   it "renders a text field for the legislator's first name" do
     

     response.should have_selector(
       "input[type=text]",
       :name => "legislator[first_name]",
       :value => @legislator.first_name
     )
   end

   it "renders a text field for the legislator's last name" do

     response.should have_selector(
       "input[type=text]",
       :name => "legislator[last_name]",
       :value => @legislator.last_name
     )
   end 
  
   it "renders a text field for the legislators street address" do
      response.should have_selector(
        "input[type=text]",
        :name => "legislator[address1]",
        :value => @legislator.address1
      )
   end
   
   it "renders a text field for the legislators secondary street address" do
       response.should have_selector(
         "input[type=text]",
         :name => "legislator[address2]",
         :value => @legislator.address2
       )
    end
   
    it "renders a text field for the legislators town" do
       response.should have_selector(
         "input[type=text]",
         :name => "legislator[town]",
         :value => @legislator.town
       )
    end
    
    it "renders a text field for the legislators state" do
      response.should have_selector(
        "input[type=text]",
        :name => "legislator[state]",
        :value => @legislator.state
      )
   end 
   
   it "renders a text field for the legislators zip code" do
     response.should have_selector(
       "input[type=text]",
       :name => "legislator[zip]",
       :value => @legislator.zip
     )
  end
  
  it "renders a text field for the legislators extended zip code" do
     response.should have_selector(
       "input[type=text]",
       :name => "legislator[zip4]",
       :value => @legislator.zip4
     )
  end
     
end