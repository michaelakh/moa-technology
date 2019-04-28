class PagesController < ApplicationController
  def welcome
    @title = 'MOA Technologies'
  end
  
  def privacy
    @title = 'Privacy Policy | MOA Technologies'
  end
  
end