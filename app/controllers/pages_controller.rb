class PagesController < ApplicationController
  def welcome
    @title = 'MOA Technologies'
    @projects = Project.all
  end
  
  def privacy
    @title = 'Privacy Policy | MOA Technologies'
  end
  
end