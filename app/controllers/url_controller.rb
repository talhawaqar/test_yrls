class UrlController < ApplicationController
  
  def index
    @urls = Url.all
  end


  def create
    urls = params["urls"]
    urls.each do |url|
      Url.create(link: url)
    end
    render :json => {status: 200}
  end

end
