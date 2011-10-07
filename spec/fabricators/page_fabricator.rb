Fabricator(:page) do
  title "Test Page"
  name "Awesome Page"
  body "this is the body of the page"
  published_at { 1.week.ago }
end

Fabricator(:unpublished_page, from: :page) do
  published_at { nil }
end
