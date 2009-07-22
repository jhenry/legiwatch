require File.dirname(__FILE__) + '/../../spec_helper'

describe "legislators/new.html.erb" do
  before(:each) do
    @legislator = mock_model(Legislator, :null_object => true).as_new_record
    assigns[:legislator] = @legislator
  end
  
  it "should render a form to create a legislator" do
    render "legislators/new.html.erb"
    response.should have_selector("form[method=post]", :action => legislators_path) do |form|
      form.should have_selector("input[type=submit]")
    end
  end
  
  it "should render a text field for the legislator's first name" do
    @legislator.stub!(:first_name).and_return "Bob"
    render "legislators/new.html.erb"
    response.should have_selector(
      "input[type=text]",
      :name => "legislator[first_name]",
      :value => "Bob"
    )
  end
  
  it "should render a text field for the legislator's last name" do
    @legislator.stub!(:last_name).and_return "Dobbs"
    render "legislators/new.html.erb"
    response.should have_selector(
      "input[type=text]",
      :name => "legislator[last_name]",
      :value => "Dobbs"
    )
  end
  
  it "renders a text field for the legislators street address" do
    @legislator.stub!(:address1).and_return "21 Oak Street"
    render "legislators/new.html.erb"
      response.should have_selector(
        "input[type=text]",
        :name => "legislator[address1]",
        :value => @legislator.address1
      )
   end
   
   it "renders a text field for the legislators secondary street address" do
     @legislator.stub!(:address2).and_return "Apt. 4"
     render "legislators/new.html.erb"
       response.should have_selector(
         "input[type=text]",
         :name => "legislator[address2]",
         :value => @legislator.address2
       )
    end
   
    it "renders a text field for the legislators town" do
      @legislator.stub!(:town).and_return "Anytown"
      render "legislators/new.html.erb"
       response.should have_selector(
         "input[type=text]",
         :name => "legislator[town]",
         :value => @legislator.town
       )
    end
    
    it "renders a text field for the legislators state" do
      @legislator.stub!(:state).and_return "ME"
      render "legislators/new.html.erb"
      response.should have_selector(
        "input[type=text]",
        :name => "legislator[state]",
        :value => @legislator.state
      )
   end 
   
   it "renders a text field for the legislators zip code" do
     @legislator.stub!(:zip).and_return "04102"
     render "legislators/new.html.erb"
     response.should have_selector(
       "input[type=text]",
       :name => "legislator[zip]",
       :value => @legislator.zip
     )
  end
  
  it "renders a text field for the legislators extended zip code" do
    @legislator.stub!(:zip4).and_return "1234"
    render "legislators/new.html.erb"
     response.should have_selector(
       "input[type=text]",
       :name => "legislator[zip4]",
       :value => @legislator.zip4
     )
  end
  
end