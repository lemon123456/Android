Given (/^I launch primero$/) do
  sleep 10
end

Given /^I login primero with "(.*?)" and "(.*?)"$/ do |username, password|
  login_page.loginAs(username,password)
end

Then /^I should see "(.*?)" in the page$/ do |content|
  sleep 10
  login_page.verifyTextExist(content)
end

