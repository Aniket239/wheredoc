require "test_helper"

class DocumentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get document_index_url
    assert_response :success
  end

  test "should get new" do
    get document_new_url
    assert_response :success
  end

  test "should get edit" do
    get document_edit_url
    assert_response :success
  end
end
