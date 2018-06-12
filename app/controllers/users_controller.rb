class UsersController < ApplicationController
    before_action :authenticate_user!

    def auth_token 
        @auth_token = current_user.auth_token
    end

    def generate_auth_token
        if current_user.generate_auth_token
            redirect_to users_auth_token_path
        end
    end
end
