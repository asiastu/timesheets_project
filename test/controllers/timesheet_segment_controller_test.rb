require 'test_helper'

class TimesheetSegmentControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get timesheet_segment_index_url
    assert_response :success
  end

  test "should get new" do
    get timesheet_segment_new_url
    assert_response :success
  end

  test "should get create" do
    get timesheet_segment_create_url
    assert_response :success
  end

  test "should get edit" do
    get timesheet_segment_edit_url
    assert_response :success
  end

  test "should get update" do
    get timesheet_segment_update_url
    assert_response :success
  end

end
