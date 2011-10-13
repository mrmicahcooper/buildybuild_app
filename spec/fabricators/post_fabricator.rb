Fabricator(:post) do
  title "This is the title of a post"
  body "Welcome to the power of blog"
  published_at { 1.week.ago }
  page!
end
