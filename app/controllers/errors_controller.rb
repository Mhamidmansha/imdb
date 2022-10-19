class ErrorsController < ApplicationController
  def not_found
    render :file => "/Users/mac/imdb/public/404.html",  :status => 404
  end

  def internal_server
    render :file => "/Users/mac/imdb/public/500.html",  :status => 500
  end

  def unprocessable
    render :file => "/Users/mac/imdb/public/422.html",  :status => 422
  end

  def unacceptable
    render status: 406
  end
end
