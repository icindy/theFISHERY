class StaticPagesController < ApplicationController
  
  before_filter :protect_page

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def login
  end 

  def protect_page
    if current_user.nil?
      redirect_to new_user_session_path
    else
      render :layout => "application"
    end
  end

end
