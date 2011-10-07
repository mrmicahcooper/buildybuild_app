Fabricator(:sub_page) do
  title "Sub Page"
  name "Awesome Page"
  body "this is the body of the page"
  parent_page!
end
