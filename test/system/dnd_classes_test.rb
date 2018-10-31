require "application_system_test_case"

class DndClassesTest < ApplicationSystemTestCase
  setup do
    @dnd_class = dnd_classes(:one)
  end

  test "visiting the index" do
    visit dnd_classes_url
    assert_selector "h1", text: "Dnd Classes"
  end

  test "creating a Dnd class" do
    visit dnd_classes_url
    click_on "New Dnd Class"

    fill_in "Desc", with: @dnd_class.desc
    fill_in "Name", with: @dnd_class.name
    click_on "Create Dnd class"

    assert_text "Dnd class was successfully created"
    click_on "Back"
  end

  test "updating a Dnd class" do
    visit dnd_classes_url
    click_on "Edit", match: :first

    fill_in "Desc", with: @dnd_class.desc
    fill_in "Name", with: @dnd_class.name
    click_on "Update Dnd class"

    assert_text "Dnd class was successfully updated"
    click_on "Back"
  end

  test "destroying a Dnd class" do
    visit dnd_classes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dnd class was successfully destroyed"
  end
end
