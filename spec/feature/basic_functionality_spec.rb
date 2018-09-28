
feature 'Homepage' do
  scenario 'homepage greets user' do
    visit '/'
    expect(page).to have_content("Welcome to Bookmark Manager")
  end
end
