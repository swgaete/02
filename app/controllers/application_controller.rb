require 'net/http'
require 'json'
require 'instagram'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.


  def parametros
    tag =params[:tag]
    access_token = params[:access_token]
    render {}
    render json: response, root: false

  end
  
  def getCantidadTags
    tag =params[:tag]
    access_token = params[:access_token]
    uri= 'https://api.instagram.com/v1/tags/' + tag.to_s + '?access_token=' + ACCESS_TOKEN.to_s
    return 
  end

  protect_from_forgery with: :exception
end
