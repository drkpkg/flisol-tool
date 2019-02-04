require "application_system_test_case"

class InstallDistroInfosTest < ApplicationSystemTestCase
  setup do
    @install_distro_info = install_distro_infos(:one)
  end

  test "visiting the index" do
    visit install_distro_infos_url
    assert_selector "h1", text: "Install Distro Infos"
  end

  test "creating a Install distro info" do
    visit install_distro_infos_url
    click_on "New Install Distro Info"

    fill_in "Distro", with: @install_distro_info.distro_id
    fill_in "Installed", with: @install_distro_info.installed
    fill_in "People", with: @install_distro_info.people_id
    fill_in "Trouble", with: @install_distro_info.trouble_id
    click_on "Create Install distro info"

    assert_text "Install distro info was successfully created"
    click_on "Back"
  end

  test "updating a Install distro info" do
    visit install_distro_infos_url
    click_on "Edit", match: :first

    fill_in "Distro", with: @install_distro_info.distro_id
    fill_in "Installed", with: @install_distro_info.installed
    fill_in "People", with: @install_distro_info.people_id
    fill_in "Trouble", with: @install_distro_info.trouble_id
    click_on "Update Install distro info"

    assert_text "Install distro info was successfully updated"
    click_on "Back"
  end

  test "destroying a Install distro info" do
    visit install_distro_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Install distro info was successfully destroyed"
  end
end
