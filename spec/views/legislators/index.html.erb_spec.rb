require File.dirname(__FILE__) + '/../../spec_helper'

Spec::Matchers.define :show_legislators do |legislators|
  match do |response|
    body = response.body
    @missing_legislator = legislators.find {|legislator|
      !body.include? "#{legislator.first_name} #{legislator.last_name}"
    }
    @missing_legislator.nil?
  end
  failure_message_for_should do
    "Expected to find legislator: #{@missing_legislator.first_name} #{@missing_legislator.last_name}"
  end
end

describe "legislators/index.html.erb" do
  
  
  [1, 2, 5, 10].each do |legislator_count|
    context "#{legislator_count} legislator" do
      before(:each) do
        @legislators = []
        assigns[:legislators] = @legislators
      end
      legislator_count.to_i.times do
        before(:each) do
          @legislators << Factory(:legislator)
        end
      end
      it "shows names" do
        render "legislators/index.html.erb"
        response.should show_legislators(@legislators)
      end
      it "does not show 'No legislators registered'" do
        render "legislators/index.html.erb"
        response.should_not include_text("No legislators registered")
      end
    end
  end
end