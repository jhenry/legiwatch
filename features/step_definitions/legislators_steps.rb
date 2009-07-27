
Given /^no legislators$/ do
  Legislator.destroy_all
end

Given /^the legislator$/ do |table|
  data = table.hashes[0]
  @legislator = Legislator.create!(data)
end

Given /^the legislators$/ do |table|
  @legislators = table.hashes.map do |data|
    Legislator.create!(data)
  end
end

Given /^(\d*) legislators?$/ do |legislator_count|
  @legislators = []
  legislator_count.to_i.times do 
    @legislators << Factory(:legislator)
  end
end

When /^I create a legislator$/ do |legislator|
  When %{I fill in legislator information}, legislator 
  And %{I press "Create"}  
end

When /^I fill in legislator information$/ do |table|
  data = table.hashes[0]
  first_name = data[:first_name]
  last_name = data[:last_name]
  address1 = data[:address1]
  address2 = data[:address2]
  town = data[:town]
  state = data[:state]
  zip = data[:zip]
  zip4 = data[:zip4]
  When %{I fill in "First Name" with "#{first_name}"}
  And %{I fill in "Last Name" with "#{last_name}"}
  And %{I fill in "Address" with "#{address1}"}
  And %{I fill in "Address 2" with "#{address2}"}
  And %{I fill in "Town" with "#{town}"}
  And %{I fill in "State" with "#{state}"}
  And %{I fill in "Zip" with "#{zip}"}
  And %{I fill in "+4" with "#{zip4}"}
end

When /^I fill in legislator address$/ do |table|
  data = table.hashes[0]
  address1 = data[:address1]
  address2 = data[:address2]
  town = data[:town]
  state = data[:state]
  zip = data[:zip]
  zip4 = data[:zip4]
  When %{I fill in "Address" with "#{address1}"}
  And %{I fill in "Address 2" with "#{address2}"}
  And %{I fill in "Town" with "#{town}"}
  And %{I fill in "State" with "#{state}"}
  And %{I fill in "Zip" with "#{zip}"}
  And %{I fill in "+4" with "#{zip4}"}
end

Then /^I should see the legislator$/ do
  Then %{I should see "#{@legislator.first_name} #{@legislator.last_name}"}
end


Then /^I should see the legislators$/ do
  @legislators.each do |legislator|
    Then %{I should see "#{legislator.first_name} #{legislator.last_name}"}
  end
end
