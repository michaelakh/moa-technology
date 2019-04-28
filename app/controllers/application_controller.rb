class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_meta

  
  def set_meta
    @meta = {}
  end
  
  private
  
  def captalize_all(string)
    string.split.map(&:capitalize).join(' ')
  end
end
