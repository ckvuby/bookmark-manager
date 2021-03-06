require 'pg'

feature 'View bookmarks' do
  scenario 'user is able to visit bookmarks page' do
    conn = PG.connect(dbname: 'bookmark_manager_test')
    conn.exec("INSERT INTO bookmarks(url) VALUES('csgo.com');")
    conn.exec("INSERT INTO bookmarks(url) VALUES('lolcats.com');")
    visit('/bookmarks')
    expect(page).to have_content("csgo.com")
    expect(page).to have_content("lolcats.com")
  end
end

feature 'add bookmarks' do
  scenario 'user is able to add a bookmark to and see it' do
    visit('/')
    fill_in('add_url', with: 'herro.com')
    click_button("Submit")
    expect(page).to have_content("herro.com")
  end
end