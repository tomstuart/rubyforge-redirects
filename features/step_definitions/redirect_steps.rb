When /^I visit (.*)$/ do |url|
  request url
end

Then /^I should get redirected$/ do
  expect(last_response).to be_redirect
end

Then /^the redirect should be permanent$/ do
  expect(last_response.status).to eq Rack::Utils.status_code(:moved_permanently)
end

Then /^the redirect should send me to (.*)$/ do |url|
  expect(last_response.location).to eq url
end

When(/^an umapped old RubyForge URL is visited$/) do
  visit 'http://some-arbitrary-unmapped-gem.rubyforge.org'
end

Then(/^a not found page should be presented$/) do
  expect(page.status_code).to eq Rack::Utils.status_code(:not_found)
end

Then(/^the page should let me search for the gem$/) do
  expect(page).to have_css("form[action='https://www.google.com'] input[name=q]")
end

Then(/^the page should explain how I can fix this$/) do
  expect(page).to have_content("please submit a pull request")
  expect(page).to have_css("a[href='https://github.com/tomstuart/rubyforge-redirects']")
end
