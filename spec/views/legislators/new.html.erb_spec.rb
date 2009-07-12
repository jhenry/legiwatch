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
  
end