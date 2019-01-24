feature 'app has a multiplayer menu' do
  scenario 'loads player selection' do
    sign_in
    expect(page).to have_content 'Game Select'
  end
end

feature 'can select 1 player game' do
  scenario 'loads 1player page' do
    sign_in
    click_button "1 Player"
    expect(page).to have_content '1 Player'
  end
end
