require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subscription = subscriptions(:one)
  end

  test "should get index" do
    get subscriptions_url, as: :json
    assert_response :success
  end

  test "should create subscription" do
    assert_difference('Subscription.count') do
      post subscriptions_url, params: { subscription: { code: @subscription.code, expiration_date: @subscription.expiration_date, type_P: @subscription.type_P, type_s: @subscription.type_s, user_id: @subscription.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show subscription" do
    get subscription_url(@subscription), as: :json
    assert_response :success
  end

  test "should update subscription" do
    patch subscription_url(@subscription), params: { subscription: { code: @subscription.code, expiration_date: @subscription.expiration_date, type_P: @subscription.type_P, type_s: @subscription.type_s, user_id: @subscription.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy subscription" do
    assert_difference('Subscription.count', -1) do
      delete subscription_url(@subscription), as: :json
    end

    assert_response 204
  end
end
