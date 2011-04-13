Given /^I am signed in as "([^"]*)"$/ do |name|
  visit "/sign_in"
  fill_in "Name", :with => name
  click_button "Go"
end