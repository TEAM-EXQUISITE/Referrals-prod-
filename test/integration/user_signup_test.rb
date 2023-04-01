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
    follow_redirect! 
    assert_template 'users/show' 
  end 
end
