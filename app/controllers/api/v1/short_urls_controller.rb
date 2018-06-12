class Api::V1::ShortUrlsController < ApiController
    before_action :authenticate_api_request
    def create
        @short_url = ShortUrl.new(short_url_params)
            respond_to do |format|
            if @short_url.save
                format.json {short_url: "http://localhost:3000/#{@short_url.shortened_url}"}
            else
                format.json { render json: @short_url.errors, status: :unprocessable_entity }
            end
            end
    end
end
