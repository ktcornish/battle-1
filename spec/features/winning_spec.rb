feature 'player has won the game' do
  scenario 'a player 1 wins' do
    sign_in_and_attack(17)
    expect(page).to have_content 'Dave wins'
  end
end
