feature 'Attacking' do
  scenario 'attack player 2' do
    sign_in_and_attack(1)
    expect(page).to have_content "Dave vs. Mittens\nDave: 60HP, Mittens: 53HP\nIt's Mittens's turn"
  end
end
