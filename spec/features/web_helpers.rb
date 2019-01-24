def sign_in_and_play
  visit('/two_player_names')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def sign_in_and_attack(number)
  visit('/two_player_names')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
  number.times { srand(1)
    click_link 'Attack!' }
end

def sign_in
  visit('/')
end
