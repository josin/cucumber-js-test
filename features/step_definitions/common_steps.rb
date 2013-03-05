Then /^(?:|I )should be on subdomain (.+)$/ do |subdomain|
  current_host = URI.parse(current_url).host
  assert_equal current_host.start_with?(subdomain), true
end
