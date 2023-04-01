require "test_helper"

class UserSignupTest < ActionDispatch::IntegrationTest
  def setup 
    @user = users(:michael)
  end

  test "User can sign up " do 
    get new_user_path 
    assert_template 'users/new' 
    post users_path , params: {
      user: {
        name: 'janet', 
        email:'janet@example.com', 
        password:'password',
        password_confirmation: 'password'
      }
    }
    assert_not flash.empty?
    follow_redirect! 
    assert_template 'users/show' 
    assert flash.empty?
  end 

  test "Should render error partial with password length less than six" do 
    get new_user_path 
    assert_template 'users/new' 
    post users_path , params: {
      user: {
        name: @user.name, 
        email: @user.email, 
        password: 'pass', 
        password_confirmation: 'pass', 
      }
    }
    assert_template partial: '_error_messages'
  end 

  test "Should render error for wrong email format" do 
    get new_user_path 
    post users_path , params: {
      user: {
        name: @user.name, 
        email: 'wrong', 
        password:'password', 
        password_confirmation: 'password',
      }
    }
    assert_template partial: '_error_messages' 
    assert_template 'users/new' 
  end
end
