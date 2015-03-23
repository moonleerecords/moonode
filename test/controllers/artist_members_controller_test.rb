require 'test_helper'

class ArtistMembersControllerTest < ActionController::TestCase
  setup do
    @artist_member = artist_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artist_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artist_member" do
    assert_difference('ArtistMember.count') do
      post :create, artist_member: { Artist_id: @artist_member.Artist_id, Member_id: @artist_member.Member_id, role: @artist_member.role }
    end

    assert_redirected_to artist_member_path(assigns(:artist_member))
  end

  test "should show artist_member" do
    get :show, id: @artist_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artist_member
    assert_response :success
  end

  test "should update artist_member" do
    patch :update, id: @artist_member, artist_member: { Artist_id: @artist_member.Artist_id, Member_id: @artist_member.Member_id, role: @artist_member.role }
    assert_redirected_to artist_member_path(assigns(:artist_member))
  end

  test "should destroy artist_member" do
    assert_difference('ArtistMember.count', -1) do
      delete :destroy, id: @artist_member
    end

    assert_redirected_to artist_members_path
  end
end
