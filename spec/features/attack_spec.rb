feature 'Attack player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'You attacked Mittens'
  end
end
