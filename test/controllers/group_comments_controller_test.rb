require 'test_helper'

class GroupCommentsControllerTest < ActionController::TestCase
  setup do
    @group_comment = group_comments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:group_comments)
  end

  test "should create group_comment" do
    assert_difference('GroupComment.count') do
      post :create, group_comment: { comment: @group_comment.comment, studygroup_id: @group_comment.studygroup_id, user: @group_comment.user }
    end

    assert_response 201
  end

  test "should show group_comment" do
    get :show, id: @group_comment
    assert_response :success
  end

  test "should update group_comment" do
    put :update, id: @group_comment, group_comment: { comment: @group_comment.comment, studygroup_id: @group_comment.studygroup_id, user: @group_comment.user }
    assert_response 204
  end

  test "should destroy group_comment" do
    assert_difference('GroupComment.count', -1) do
      delete :destroy, id: @group_comment
    end

    assert_response 204
  end
end
