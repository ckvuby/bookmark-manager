feature 'View bookmarks' do
  scenario 'user is able to visit bookmarks page' do
    visit('/bookmarks')
    expect(page).to have_content("www.cats.com")
    expect(page).to have_content("www.dogs.com")
    expect(page).to have_content("www.amy.com")
  end
end