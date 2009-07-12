require File.dirname(__FILE__) + '/../spec_helper'

describe LegislatorsController, "Get index" do
  it "assigns all legislators" do
    legislators = []
    Legislator.stub!(:all).and_return legislators
    get :index
    assigns[:legislators].should be(legislators)
  end
end


describe LegislatorsController, "Get new" do

  it "assigns a new legislator" do
    legislator = mock(Legislator)
    Legislator.stub!(:new).and_return legislator
    get :new
    assigns[:legislator].should be(legislator)
  end
  
end

describe LegislatorsController, "POST create" do
  
  before(:each) do
    @legislator = mock_model(Legislator, :save => nil)
    Legislator.stub!(:new).and_return(@legislator)
  end
  
  it "should build a new legislator" do
    Legislator.should_receive(:new).with("first_name" => "Bob").and_return(@legislator)
    post :create, :legislator => { "first_name" => "Bob"}
  end
  
  it "should save the legislator" do    
    @legislator.should_receive(:save)
    post :create
  end
  
  context "when the legislator saves successfully" do
    before(:each) do
      @legislator.stub!(:save).and_return true
    end
    
    it "should set a flash[:notice] message" do
      post :create
      flash[:notice].should == "The legislator was saved successfully."
    end
    
    it "should redirect to the legislators index" do
      post :create
      response.should redirect_to(legislators_path)
    end
        
  end
  
  context "when the legislator fails to save" do
    before(:each) do
      @legislator.stub!(:save).and_return false
    end    
    
    it "should assign @legislator" do
      post :create
      assigns[:legislator].should == @legislator
    end
    
    it "should render the new template" do
      post :create
      response.should render_template("new")
    end
    
  end
  
end


describe LegislatorsController, "Get edit" do
  before(:each) do
    @legislator = mock(Legislator)
    Legislator.stub!(:find).and_return @legislator
  end
  
  it "responds successfully" do
    get :edit, :id => '1'
    response.should be_success
  end
  
  it "finds the requested legislator" do
    id = "1"
    Legislator.should_receive(:find).with id
    get :edit, :id => id
  end
  it "assigns the requested legislator" do
    get :edit, :id => "1"
    assigns[:legislator].should be(@legislator)
  end
end


describe LegislatorsController, "Get update" do
  before(:each) do
    @legislator = mock_model(Legislator)
    Legislator.stub!(:find).and_return @legislator
    @legislator.stub!(:update_attributes)
  end
  it "redirects to the index" do
    put :update, :id => "1", :legislator => {}
    response.should redirect_to(legislators_path)
  end
  
  it "updates the legislator" do
    attributes = {"first_name" => 'cool', "last_name" => 'moe dee'}
    @legislator.should_receive(:update_attributes).with attributes
    put :update, :id => "1", :legislator => attributes
  end
  
end






