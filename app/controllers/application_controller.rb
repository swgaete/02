require 'net/http'
require 'json'
require 'instagram'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  def getCantidadTags(tag,ACCESS_TOKEN)
    hmac = generateHash('GET' + tag.to_s + ACCESS_TOKEN.to_s)
    uri= 'https://api.instagram.com/v1/tags/' + tag.to_s + '?access_token=' + ACCESS_TOKEN.to_s
    return JSON.parse(get(uri, hmac= hmac).body)
  rescue JSON::ParserError
    return {}
  end

  protect_from_forgery with: :exception
end
