# frozen_string_literal: true

require "test_helper"

class AuthorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get authors_url
    assert_response :success
  end
end
