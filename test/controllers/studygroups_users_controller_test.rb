require 'test_helper'

class StudygroupsUsersControllerTest < ActionController::TestCase
  setup do
    @studygroups_user = studygroups_users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studygroups_users)
  end

  test "should create studygroups_user" do
    assert_difference('StudygroupsUser.count') do
      post :create, studygroups_user: { studygroup_id: @studygroups_user.studygroup_id, user_id: @studygroups_user.user_id }
    end

    assert_response 201
  end

  test "should show studygroups_user" do
    get :show, id: @studygroups_user
    assert_response :success
  end

  test "should update studygroups_user" do
    put :update, id: @studygroups_user, studygroups_user: { studygroup_id: @studygroups_user.studygroup_id, user_id: @studygroups_user.user_id }
    assert_response 204
  end

  test "should destroy studygroups_user" do
    assert_difference('StudygroupsUser.count', -1) do
      delete :destroy, id: @studygroups_user
    end

    assert_response 204
  end
end
