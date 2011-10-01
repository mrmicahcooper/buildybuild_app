Given /^I am signed in$/ do
  Fabricate(:user)
  When I %(follow "sign in")
  And %(I fill in "email" with "email@example.com")
  And %(fill in "password" with "password")
  And %(I press "sign in")
end
