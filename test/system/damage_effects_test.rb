require "application_system_test_case"

class DamageEffectsTest < ApplicationSystemTestCase
  setup do
    @damage_effect = damage_effects(:one)
  end

  test "visiting the index" do
    visit damage_effects_url
    assert_selector "h1", text: "Damage Effects"
  end

  test "creating a Damage effect" do
    visit damage_effects_url
    click_on "New Damage Effect"

    fill_in "Name", with: @damage_effect.name
    fill_in "Value", with: @damage_effect.value
    click_on "Create Damage effect"

    assert_text "Damage effect was successfully created"
    click_on "Back"
  end

  test "updating a Damage effect" do
    visit damage_effects_url
    click_on "Edit", match: :first

    fill_in "Name", with: @damage_effect.name
    fill_in "Value", with: @damage_effect.value
    click_on "Update Damage effect"

    assert_text "Damage effect was successfully updated"
    click_on "Back"
  end

  test "destroying a Damage effect" do
    visit damage_effects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Damage effect was successfully destroyed"
  end
end
