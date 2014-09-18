require 'test_helper'

class ProfessionalUpgradesControllerTest < ActionController::TestCase
  setup do
    @professional_upgrade = professional_upgrades(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:professional_upgrades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create professional_upgrade" do
    assert_difference('ProfessionalUpgrade.count') do
      post :create, professional_upgrade: { academic_title: @professional_upgrade.academic_title, country_id: @professional_upgrade.country_id, institution: @professional_upgrade.institution, upgrade: @professional_upgrade.upgrade, user_id: @professional_upgrade.user_id, year: @professional_upgrade.year }
    end

    assert_redirected_to professional_upgrade_path(assigns(:professional_upgrade))
  end

  test "should show professional_upgrade" do
    get :show, id: @professional_upgrade
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @professional_upgrade
    assert_response :success
  end

  test "should update professional_upgrade" do
    patch :update, id: @professional_upgrade, professional_upgrade: { academic_title: @professional_upgrade.academic_title, country_id: @professional_upgrade.country_id, institution: @professional_upgrade.institution, upgrade: @professional_upgrade.upgrade, user_id: @professional_upgrade.user_id, year: @professional_upgrade.year }
    assert_redirected_to professional_upgrade_path(assigns(:professional_upgrade))
  end

  test "should destroy professional_upgrade" do
    assert_difference('ProfessionalUpgrade.count', -1) do
      delete :destroy, id: @professional_upgrade
    end

    assert_redirected_to professional_upgrades_path
  end
end
