require "application_system_test_case"

class PlayersTest < ApplicationSystemTestCase
  setup do
    @player = players(:one)
  end

  test "visiting the index" do
    visit players_url
    assert_selector "h1", text: "Players"
  end

  test "creating a Player" do
    visit players_url
    click_on "New Player"

    fill_in "Alignment", with: @player.alignment
    fill_in "Background", with: @player.background
    fill_in "Character class", with: @player.character_class
    fill_in "Character name", with: @player.character_name
    fill_in "Experience", with: @player.experience
    fill_in "Level", with: @player.level
    fill_in "Player name", with: @player.player_name
    fill_in "Race", with: @player.race
    click_on "Create Player"

    assert_text "Player was successfully created"
    click_on "Back"
  end

  test "updating a Player" do
    visit players_url
    click_on "Edit", match: :first

    fill_in "Alignment", with: @player.alignment
    fill_in "Background", with: @player.background
    fill_in "Character class", with: @player.character_class
    fill_in "Character name", with: @player.character_name
    fill_in "Experience", with: @player.experience
    fill_in "Level", with: @player.level
    fill_in "Player name", with: @player.player_name
    fill_in "Race", with: @player.race
    click_on "Update Player"

    assert_text "Player was successfully updated"
    click_on "Back"
  end

  test "destroying a Player" do
    visit players_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Player was successfully destroyed"
  end
end
