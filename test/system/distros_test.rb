require "application_system_test_case"

class DistrosTest < ApplicationSystemTestCase
  setup do
    @distro = distros(:one)
  end

  test "visiting the index" do
    visit distros_url
    assert_selector "h1", text: "Distros"
  end

  test "creating a Distro" do
    visit distros_url
    click_on "New Distro"

    fill_in "Description", with: @distro.description
    fill_in "Name", with: @distro.name
    fill_in "Package", with: @distro.package_id
    fill_in "Version", with: @distro.version
    click_on "Create Distro"

    assert_text "Distro was successfully created"
    click_on "Back"
  end

  test "updating a Distro" do
    visit distros_url
    click_on "Edit", match: :first

    fill_in "Description", with: @distro.description
    fill_in "Name", with: @distro.name
    fill_in "Package", with: @distro.package_id
    fill_in "Version", with: @distro.version
    click_on "Update Distro"

    assert_text "Distro was successfully updated"
    click_on "Back"
  end

  test "destroying a Distro" do
    visit distros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Distro was successfully destroyed"
  end
end
