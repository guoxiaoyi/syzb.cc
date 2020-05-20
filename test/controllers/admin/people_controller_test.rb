require 'test_helper'

class Admin::PeopleControllerTest < ActionController::TestCase
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
      post :create, person: { city: @person.city, content: @person.content, email: @person.email, leixing: @person.leixing, name: @person.name, nianji: @person.nianji }
    end

    assert_redirected_to admin_person_path(assigns(:person))
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
    patch :update, id: @person, person: { city: @person.city, content: @person.content, email: @person.email, leixing: @person.leixing, name: @person.name, nianji: @person.nianji }
    assert_redirected_to admin_person_path(assigns(:person))
  end

  test "should destroy person" do
    assert_difference('Person.count', -1) do
      delete :destroy, id: @person
    end

    assert_redirected_to admin_people_path
  end
end
