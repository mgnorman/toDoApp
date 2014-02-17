require 'test_helper'

class NewCalendarsControllerTest < ActionController::TestCase
  setup do
    @new_calendar = new_calendars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_calendars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_calendar" do
    assert_difference('NewCalendar.count') do
      post :create, new_calendar: { Ends: @new_calendar.Ends, Location: @new_calendar.Location, New_Event_Title: @new_calendar.New_Event_Title, Notes: @new_calendar.Notes, Starts: @new_calendar.Starts }
    end

    assert_redirected_to new_calendar_path(assigns(:new_calendar))
  end

  test "should show new_calendar" do
    get :show, id: @new_calendar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_calendar
    assert_response :success
  end

  test "should update new_calendar" do
    patch :update, id: @new_calendar, new_calendar: { Ends: @new_calendar.Ends, Location: @new_calendar.Location, New_Event_Title: @new_calendar.New_Event_Title, Notes: @new_calendar.Notes, Starts: @new_calendar.Starts }
    assert_redirected_to new_calendar_path(assigns(:new_calendar))
  end

  test "should destroy new_calendar" do
    assert_difference('NewCalendar.count', -1) do
      delete :destroy, id: @new_calendar
    end

    assert_redirected_to new_calendars_path
  end
end
