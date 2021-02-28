feature 'Posting a Peep' do
  feature 'getting the main page to respond' do
    scenario 'it should show the word Chitter on the "/" page' do
      visit('/')

      expect(page).to have_content 'Chitter'
    end
  end

  feature 'posting a peep' do
    scenario 'it should show the peep' do
      visit('/home')
      fill_in('peep', with: 'This is my first peep!')
      click_button('Peep')

      expect(page).to have_content 'This is my first peep!'
    end
  end
end

