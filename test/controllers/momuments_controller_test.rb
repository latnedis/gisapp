require 'test_helper'

class MomumentsControllerTest < ActionController::TestCase
  setup do
    @momument = momuments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:momuments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create momument" do
    assert_difference('Momument.count') do
      post :create, momument: { alternative_name: @momument.alternative_name, approximate_area: @momument.approximate_area, architectural_style: @momument.architectural_style, code: @momument.code, culture: @momument.culture, description: @momument.description, length: @momument.length, material: @momument.material, monument_type: @momument.monument_type, photo: @momument.photo, technical_condition: @momument.technical_condition, width: @momument.width }
    end

    assert_redirected_to momument_path(assigns(:momument))
  end

  test "should show momument" do
    get :show, id: @momument
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @momument
    assert_response :success
  end

  test "should update momument" do
    patch :update, id: @momument, momument: { alternative_name: @momument.alternative_name, approximate_area: @momument.approximate_area, architectural_style: @momument.architectural_style, code: @momument.code, culture: @momument.culture, description: @momument.description, length: @momument.length, material: @momument.material, monument_type: @momument.monument_type, photo: @momument.photo, technical_condition: @momument.technical_condition, width: @momument.width }
    assert_redirected_to momument_path(assigns(:momument))
  end

  test "should destroy momument" do
    assert_difference('Momument.count', -1) do
      delete :destroy, id: @momument
    end

    assert_redirected_to momuments_path
  end
end
