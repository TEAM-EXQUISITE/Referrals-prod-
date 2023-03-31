class ApplicationController < ActionController::Base

    #Configures devise to redirect to 
    #a user's show page after login
    def after_sign_in_path_for(resource)
        user_path(resource) 
    end 
end
