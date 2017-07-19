feature 'Attack player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Dave attacked Mittens'
  end

  scenario "attacking player 2" do
    sign_in_and_play
    click_button "Attack"
    click_button "Okay"
    expect(page).not_to have_content "Mittens: 60HP"
    expect(page).to have_content "Mittens: 50HP"
  end

  scenario "attacking player 1" do
    sign_in_and_play
    click_button "Attack"
    click_button "Okay"
    click_button "Attack"
    expect(page).to have_content 'Mittens attacked Dave'
  end
end
