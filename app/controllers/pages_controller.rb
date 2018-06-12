class PagesController < ApplicationController
  def home
    @short_url = ShortUrl.new
  end
end
