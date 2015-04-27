class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :showDateTime
  
  def showDateTime
    time = Time.now
    @currentDateTime = time.year.to_s + '-' + time.month.to_s + '-' + time.day.to_s + ' ' + time.hour.to_s + ':' + time.min.to_s
  end
end
