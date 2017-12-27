class UrlShortnersController < ApplicationController

  def index
    @url_shortners = UrlShortner.all
  end

  def show
  end

  def new
    @url_shortner = UrlShortner.new
  end

  def create
     @url_shortner = UrlShortner.new(url_shortner_params)
     
     @url_shortner.save!
     redirect_to root_path
  end

  private
  def url_shortner_params
    params.require(:url_shortner).permit(:long_url)
  end
end
