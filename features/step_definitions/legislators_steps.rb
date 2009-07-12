# Given /^the following legislator_profiles:$/ do |legislator_profiles|
#   LegislatorProfiles.create!(legislator_profiles.hashes)
# end


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

When /^I fill in legislator information$/ do |table|
  data = table.hashes[0]
  first_name = data[:first_name]
  last_name = data[:last_name]
  When %{I fill in "First Name" with "#{first_name}"}
  And %{I fill in "Last Name" with "#{last_name}"}
  And 'I press "Create"'
end

Then /^I should see the legislator$/ do
  Then %{I should see "#{@legislator.first_name} #{@legislator.last_name}"}
end


Then /^I should see the legislators$/ do
  @legislators.each do |legislator|
    Then %{I should see "#{legislator.first_name} #{legislator.last_name}"}
  end
end