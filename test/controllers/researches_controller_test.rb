require 'test_helper'

class ResearchesControllerTest < ActionController::TestCase
  setup do
    @research = researches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:researches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create research" do
    assert_difference('Research.count') do
      post :create, research: { area: @research.area, author_id: @research.author_id, code: @research.code, date: @research.date, description: @research.description, monument_id: @research.monument_id, research_type: @research.research_type }
    end

    assert_redirected_to research_path(assigns(:research))
  end

  test "should show research" do
    get :show, id: @research
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @research
    assert_response :success
  end

  test "should update research" do
    patch :update, id: @research, research: { area: @research.area, author_id: @research.author_id, code: @research.code, date: @research.date, description: @research.description, monument_id: @research.monument_id, research_type: @research.research_type }
    assert_redirected_to research_path(assigns(:research))
  end

  test "should destroy research" do
    assert_difference('Research.count', -1) do
      delete :destroy, id: @research
    end

    assert_redirected_to researches_path
  end
end
