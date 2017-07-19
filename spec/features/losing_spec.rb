feature 'Game Over' do
  scenario 'Player 2 hitpoints reach 0' do
    sign_in_and_play
    11.times { attack_and_ok }
    click_button 'Attack'
    expect(page).to have_content 'Mittens has been defeated!!!!'
  end
end
