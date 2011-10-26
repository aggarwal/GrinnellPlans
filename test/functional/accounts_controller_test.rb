require 'test_helper'

class AccountsControllerTest < ActionController::TestCase

  test "should get registration page" do
    get :new
    assert_response :success
  end

  test "should create tentative account" do
    
    ta = TentativeAccount.find_by_username "plans"
    assert_nil ta

    post :create, { :account => { 
        "username" => "plans", 
        "email_domain" => "grinnell.edu",
        "user_type" => "student"}}
    
    ta = TentativeAccount.find_by_username "plans"
    assert_equal "plans", ta.username
  end

  ## Note: These tests should also test the views

  test "valid tentative account already exists" do
  end
  
  test "account already exists" do
  end
  
  test "expired tentative is cleared on create" do
  end

  test "confirmation email is sent on create" do
  end

  test "confirm account successfully" do
    # make sure account and plan is created
  end

  test "confirm welcome email" do
  end

  test "confirm with expired tentative account" do
  end

  test "confirm with wrong token" do
  end
  
  test "resend confirmation email" do
  end

end