class PagesController < ApplicationController
  def home
    @short_url = ShortUrl.new
  end

  def short_url_not_found
  end
end
