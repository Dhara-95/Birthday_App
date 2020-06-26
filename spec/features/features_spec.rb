feature 'Visit homepage' do
  scenario 'Homepage displays hello!' do
    visit '/'
    expect(page).to have_content "Hello!"
  end
end