Given /^I have a browser with "([^"]*)" signed in$/ do |name|
  switch_session(name)
  And %{I am signed in as "#{name}"}
end

When /^I switch browsers to "([^"]*)"$/ do |name|
  switch_session(name)
end