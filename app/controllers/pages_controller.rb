class PagesController < ApplicationController
  def welcome
    @title = 'MOA Technologies'
    @projects = Project.all
  end
  
  def privacy
    @title = 'Privacy Policy | MOA Technologies'
  end
  def cv
    @cv = 'CV | Michael Ohioze Akhazemea | MOA Technologies'
    send_file("#{Rails.root}/app/assets/docs/Michael_Akhazemea_CV_2019.pdf", {filename:'Michael Akhazemea CV 2019'})
  end
  
end