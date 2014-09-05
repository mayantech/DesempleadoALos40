require 'test_helper'

class PeopleControllerTest < ActionController::TestCase
  setup do
    @person = people(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:people)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create person" do
    assert_difference('Person.count') do
      post :create, person: { born_date: @person.born_date, career_title: @person.career_title, facebook: @person.facebook, gender: @person.gender, google: @person.google, home_phone: @person.home_phone, last_name: @person.last_name, last_name_married: @person.last_name_married, linkedin: @person.linkedin, mobile: @person.mobile, names: @person.names, nit: @person.nit, personal_mail: @person.personal_mail, picture: @person.picture, profession: @person.profession, status: @person.status, twitter: @person.twitter }
    end

    assert_redirected_to person_path(assigns(:person))
  end

  test "should show person" do
    get :show, id: @person
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @person
    assert_response :success
  end

  test "should update person" do
    patch :update, id: @person, person: { born_date: @person.born_date, career_title: @person.career_title, facebook: @person.facebook, gender: @person.gender, google: @person.google, home_phone: @person.home_phone, last_name: @person.last_name, last_name_married: @person.last_name_married, linkedin: @person.linkedin, mobile: @person.mobile, names: @person.names, nit: @person.nit, personal_mail: @person.personal_mail, picture: @person.picture, profession: @person.profession, status: @person.status, twitter: @person.twitter }
    assert_redirected_to person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to people_path
  end
end
