def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
end

def sign_in_and_attack(number)
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
  number.times { click_link 'Attack!' }
end
