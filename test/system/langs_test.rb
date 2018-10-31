require "application_system_test_case"

class LangsTest < ApplicationSystemTestCase
  setup do
    @lang = langs(:one)
  end

  test "visiting the index" do
    visit langs_url
    assert_selector "h1", text: "Langs"
  end

  test "creating a Lang" do
    visit langs_url
    click_on "New Lang"

    fill_in "Desc", with: @lang.desc
    fill_in "Name", with: @lang.name
    click_on "Create Lang"

    assert_text "Lang was successfully created"
    click_on "Back"
  end

  test "updating a Lang" do
    visit langs_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @lang.desc
    fill_in "Name", with: @lang.name
    click_on "Update Lang"

    assert_text "Lang was successfully updated"
    click_on "Back"
  end

  test "destroying a Lang" do
    visit langs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lang was successfully destroyed"
  end
end
