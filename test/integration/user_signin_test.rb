require "test_helper"

class UserSigninTest < ActionDispatch::IntegrationTest

  def setup 
    @user = users(:michael) 
  end 

  test "Success full sign in " do 
    get new_user_session_path 
    post user_session_path , params: {
      user: {
        email:@user.email , 
        password:'password'
      }
    }
    follow_redirect! 
    assert_template 'users/show' 
  end 
 
end
