require "application_system_test_case"

class SpellComponentTypesTest < ApplicationSystemTestCase
  setup do
    @spell_component_type = spell_component_types(:one)
  end

  test "visiting the index" do
    visit spell_component_types_url
    assert_selector "h1", text: "Spell Component Types"
  end

  test "creating a Spell component type" do
    visit spell_component_types_url
    click_on "New Spell Component Type"

    fill_in "Desc", with: @spell_component_type.desc
    fill_in "Name", with: @spell_component_type.name
    fill_in "Symbol", with: @spell_component_type.symbol
    click_on "Create Spell component type"

    assert_text "Spell component type was successfully created"
    click_on "Back"
  end

  test "updating a Spell component type" do
    visit spell_component_types_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @spell_component_type.desc
    fill_in "Name", with: @spell_component_type.name
    fill_in "Symbol", with: @spell_component_type.symbol
    click_on "Update Spell component type"

    assert_text "Spell component type was successfully updated"
    click_on "Back"
  end

  test "destroying a Spell component type" do
    visit spell_component_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Spell component type was successfully destroyed"
  end
end
