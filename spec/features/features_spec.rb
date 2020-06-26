feature 'Visit homepage' do
  # scenario 'Homepage displays hello!' do
  #   visit '/'
  #   expect(page).to have_content "Hello!"
  # end

  scenario 'when submitting my name and birthday it will display' do
    visit '/'
    fill_in :name, with: 'James'
    fill_in :birthday, with: '1990/02/03'
    click_button 'Submit'
    expect(page).to have_content "Your birthday is 1990/02/03, James!"
  end

  scenario 'when submitting Miris name and birthday it will display' do
    visit '/'
    fill_in :name, with: 'Miri'
    fill_in :birthday, with: '1996/02/23'
    click_button 'Submit'
    expect(page).to have_content "Your birthday is 1996/02/23, Miri!"
  end

end