# frozen_string_literal: true

require "test_helper"

class FormatsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get formats_path

    assert_response :success
  end
end
