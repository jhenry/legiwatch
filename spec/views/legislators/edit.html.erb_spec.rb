require File.dirname(__FILE__) + '/../../spec_helper'

describe "legislators/edit.html.erb" do
  before(:each) do
    @legislator = mock_model(Legislator, :first_name => 'steve', :last_name => 'mcnair')
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
   
end