require 'test_helper'

class InstallDistroInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @install_distro_info = install_distro_infos(:one)
  end

  test "should get index" do
    get install_distro_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_install_distro_info_url
    assert_response :success
  end

  test "should create install_distro_info" do
    assert_difference('InstallDistroInfo.count') do
      post install_distro_infos_url, params: { install_distro_info: { distro_id: @install_distro_info.distro_id, installed: @install_distro_info.installed, people_id: @install_distro_info.people_id, trouble_id: @install_distro_info.trouble_id } }
    end

    assert_redirected_to install_distro_info_url(InstallDistroInfo.last)
  end

  test "should show install_distro_info" do
    get install_distro_info_url(@install_distro_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_install_distro_info_url(@install_distro_info)
    assert_response :success
  end

  test "should update install_distro_info" do
    patch install_distro_info_url(@install_distro_info), params: { install_distro_info: { distro_id: @install_distro_info.distro_id, installed: @install_distro_info.installed, people_id: @install_distro_info.people_id, trouble_id: @install_distro_info.trouble_id } }
    assert_redirected_to install_distro_info_url(@install_distro_info)
  end

  test "should destroy install_distro_info" do
    assert_difference('InstallDistroInfo.count', -1) do
      delete install_distro_info_url(@install_distro_info)
    end

    assert_redirected_to install_distro_infos_url
  end
end
