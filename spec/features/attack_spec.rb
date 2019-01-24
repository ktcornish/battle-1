feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_play
    click_link 'Attack!'
    expect(page).to have_content "Dave vs. Mittens\nDave: 60HP, Mittens: 50HP\nIt's Mittens's turn"
  end
end
