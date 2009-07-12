# Given /^the following legislator_profiles:$/ do |legislator_profiles|
#   LegislatorProfiles.create!(legislator_profiles.hashes)
# end

When /^I fill in legislator information$/ do |table|
  data = table.hashes[0]
  first_name = data[:first_name]
  last_name = data[:last_name]
  When %{I fill in "First Name" with "#{first_name}"}
  And %{I fill in "Last Name" with "#{last_name}"}
  And 'I press "Create"'
end
