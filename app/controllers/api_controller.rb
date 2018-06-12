class ApiController < ApplicationController
     
    def authenticate_api_request
        request_auth_token =  request.headers['Authorization']
        if request_auth_token.present?
            user = User.find_by_auth_token(request_auth_token)
            if user.present?
                return true
            else
                render json: {error: "Invalid Auth Token"}
            end
        else
            render json: {error: "Please Provide an Auth Token"}
        end
    end
end