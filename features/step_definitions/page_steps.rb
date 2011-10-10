Given /^the page named "([^"]*)" has a sub page named "([^"]*)"$/ do |parent_page, sub_page|
  new_parent_page = Fabricate(:parent_page, name: parent_page)
  Fabricate(:sub_page, name: sub_page).update_attribute(:page_id, new_parent_page.id)
end
