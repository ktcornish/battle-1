feature 'Player turn' do
  scenario 'shows current player turn' do
    sign_in_and_play
    expect(page).to have_content "It's Dave's turn"
  end
  scenario 'shows switched player turn' do
    sign_in_and_attack(1)
    expect(page).to have_content "It's Mittens's turn"
  end
end
