feature "Reduce attacked player's HP" do
  scenario "attacking player 2" do
    sign_in_and_play
    click_button "Attack"
    click_link "Okay"
    expect(page).not_to have_content "Mittens: 60HP"
    expect(page).to have_content "Mittens: 50HP"
  end
end
