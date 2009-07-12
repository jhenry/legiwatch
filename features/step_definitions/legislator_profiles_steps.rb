Given /^a legislator$/ do
  @legislator = Legislator.create!
end

When /^I visit a legislator page$/ do
  visit legislator_path(@legislator)
end
