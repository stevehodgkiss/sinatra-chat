Given /^I have signed in as "([^"]*)"$/ do |name|
  fill_in "Name", :with => name
  click_button "Go"
end