require File.dirname(__FILE__) + '/../test_helper'

class NagiosServiceDetailsControllerTest < ActionController::TestCase
  def test_should_get_index
    get :index
    assert_response :success
    assert_not_nil assigns(:nagios_service_details)
  end

  def test_should_get_new
    get :new
    assert_response :success
  end

  def test_should_create_nagios_service_detail
    assert_difference('NagiosServiceDetail.count') do
      post :create, :nagios_service_detail => { }
    end

    assert_redirected_to nagios_service_detail_path(assigns(:nagios_service_detail))
  end

  def test_should_show_nagios_service_detail
    get :show, :id => nagios_service_details(:one).id
    assert_response :success
  end

  def test_should_get_edit
    get :edit, :id => nagios_service_details(:one).id
    assert_response :success
  end

  def test_should_update_nagios_service_detail
    put :update, :id => nagios_service_details(:one).id, :nagios_service_detail => { }
    assert_redirected_to nagios_service_detail_path(assigns(:nagios_service_detail))
  end

  def test_should_destroy_nagios_service_detail
    assert_difference('NagiosServiceDetail.count', -1) do
      delete :destroy, :id => nagios_service_details(:one).id
    end

    assert_redirected_to nagios_service_details_path
  end
end
