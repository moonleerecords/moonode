require 'test_helper'

class ReleaseReviewsControllerTest < ActionController::TestCase
  setup do
    @release_review = release_reviews(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:release_reviews)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create release_review" do
    assert_difference('ReleaseReview.count') do
      post :create, release_review: { quotes: @release_review.quotes, release_id: @release_review.release_id, title: @release_review.title, url: @release_review.url, visible: @release_review.visible }
    end

    assert_redirected_to release_review_path(assigns(:release_review))
  end

  test "should show release_review" do
    get :show, id: @release_review
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @release_review
    assert_response :success
  end

  test "should update release_review" do
    patch :update, id: @release_review, release_review: { quotes: @release_review.quotes, release_id: @release_review.release_id, title: @release_review.title, url: @release_review.url, visible: @release_review.visible }
    assert_redirected_to release_review_path(assigns(:release_review))
  end

  test "should destroy release_review" do
    assert_difference('ReleaseReview.count', -1) do
      delete :destroy, id: @release_review
    end

    assert_redirected_to release_reviews_path
  end
end
