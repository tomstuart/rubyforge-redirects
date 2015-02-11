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
