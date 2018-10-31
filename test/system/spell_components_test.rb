require "application_system_test_case"

class SpellComponentsTest < ApplicationSystemTestCase
  setup do
    @spell_component = spell_components(:one)
  end

  test "visiting the index" do
    visit spell_components_url
    assert_selector "h1", text: "Spell Components"
  end

  test "creating a Spell component" do
    visit spell_components_url
    click_on "New Spell Component"

    fill_in "Desc", with: @spell_component.desc
    fill_in "Name", with: @spell_component.name
    fill_in "Spell Component Type", with: @spell_component.spell_component_type_id
    click_on "Create Spell component"

    assert_text "Spell component was successfully created"
    click_on "Back"
  end

  test "updating a Spell component" do
    visit spell_components_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @spell_component.desc
    fill_in "Name", with: @spell_component.name
    fill_in "Spell Component Type", with: @spell_component.spell_component_type_id
    click_on "Update Spell component"

    assert_text "Spell component was successfully updated"
    click_on "Back"
  end

  test "destroying a Spell component" do
    visit spell_components_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spell component was successfully destroyed"
  end
end
