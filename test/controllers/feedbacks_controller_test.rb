require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
    @feedback = feedbacks(:one)
  end

  test "should get index" do
    get :index, params: { product_id: @product }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { product_id: @product }
    assert_response :success
  end

  test "should create feedback" do
    assert_difference('Feedback.count') do
      post :create, params: { product_id: @product, feedback: @feedback.attributes }
    end

    assert_redirected_to product_feedback_path(@product, Feedback.last)
  end

  test "should show feedback" do
    get :show, params: { product_id: @product, id: @feedback }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { product_id: @product, id: @feedback }
    assert_response :success
  end

  test "should update feedback" do
    put :update, params: { product_id: @product, id: @feedback, feedback: @feedback.attributes }
    assert_redirected_to product_feedback_path(@product, Feedback.last)
  end

  test "should destroy feedback" do
    assert_difference('Feedback.count', -1) do
      delete :destroy, params: { product_id: @product, id: @feedback }
    end

    assert_redirected_to product_feedbacks_path(@product)
  end
end
