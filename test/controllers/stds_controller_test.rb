require "test_helper"

class StdsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @std = stds(:one)
  end

  test "should get index" do
    get stds_url
    assert_response :success
  end

  test "should get new" do
    get new_std_url
    assert_response :success
  end

  test "should create std" do
    assert_difference("Std.count") do
      post stds_url, params: { std: { name: @std.name } }
    end

    assert_redirected_to std_url(Std.last)
  end

  test "should show std" do
    get std_url(@std)
    assert_response :success
  end

  test "should get edit" do
    get edit_std_url(@std)
    assert_response :success
  end

  test "should update std" do
    patch std_url(@std), params: { std: { name: @std.name } }
    assert_redirected_to std_url(@std)
  end

  test "should destroy std" do
    assert_difference("Std.count", -1) do
      delete std_url(@std)
    end

    assert_redirected_to stds_url
  end
end
