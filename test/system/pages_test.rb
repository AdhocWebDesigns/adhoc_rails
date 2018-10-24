require "application_system_test_case"

class PagesTest < ApplicationSystemTestCase
  setup do
    @page = pages(:one)
  end

  test "visiting the index" do
    visit pages_url
    assert_selector "h1", text: "Pages"
  end

  test "creating a Page" do
    visit pages_url
    click_on "New Page"

    fill_in "Author", with: @page.author_id
    fill_in "Children", with: @page.children_id
    fill_in "Contents", with: @page.contents
    fill_in "Heading", with: @page.heading
    fill_in "Images", with: @page.images_id
    fill_in "Page Title", with: @page.page_title
    fill_in "Parents", with: @page.parents_id
    fill_in "Published At", with: @page.published_at
    fill_in "Subheading", with: @page.subheading
    click_on "Create Page"

    assert_text "Page was successfully created"
    click_on "Back"
  end

  test "updating a Page" do
    visit pages_url
    click_on "Edit", match: :first

    fill_in "Author", with: @page.author_id
    fill_in "Children", with: @page.children_id
    fill_in "Contents", with: @page.contents
    fill_in "Heading", with: @page.heading
    fill_in "Images", with: @page.images_id
    fill_in "Page Title", with: @page.page_title
    fill_in "Parents", with: @page.parents_id
    fill_in "Published At", with: @page.published_at
    fill_in "Subheading", with: @page.subheading
    click_on "Update Page"

    assert_text "Page was successfully updated"
    click_on "Back"
  end

  test "destroying a Page" do
    visit pages_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page was successfully destroyed"
  end
end
