require "test_helper"

class PermissionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @permission = permissions(:one)
  end

  test "should get index" do
    get permissions_url
    assert_response :success
  end

  test "should get new" do
    get new_permission_url
    assert_response :success
  end

  test "should create permission" do
    assert_difference('Permission.count') do
      post permissions_url, params: { permission: { allRecords: @permission.allRecords, canCreate: @permission.canCreate, canDelete: @permission.canDelete, canRead: @permission.canRead, canUpdate: @permission.canUpdate, role_id: @permission.role_id } }
    end

    assert_redirected_to permission_url(Permission.last)
  end

  test "should show permission" do
    get permission_url(@permission)
    assert_response :success
  end

  test "should get edit" do
    get edit_permission_url(@permission)
    assert_response :success
  end

  test "should update permission" do
    patch permission_url(@permission), params: { permission: { allRecords: @permission.allRecords, canCreate: @permission.canCreate, canDelete: @permission.canDelete, canRead: @permission.canRead, canUpdate: @permission.canUpdate, role_id: @permission.role_id } }
    assert_redirected_to permission_url(@permission)
  end

  test "should destroy permission" do
    assert_difference('Permission.count', -1) do
      delete permission_url(@permission)
    end

    assert_redirected_to permissions_url
  end
end
