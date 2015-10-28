class StaticPagesController < ApplicationController
  def home
    @shopping_session = current_user.shopping_sessions.build if logged_in?
  end

  def help
  end

  def about
  end

  def contact
  end
end

