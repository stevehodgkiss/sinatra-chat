When /^I say "([^"]*)"$/ do |message|
  fill_in "Message", :with => message
  click_button "Send"
end
