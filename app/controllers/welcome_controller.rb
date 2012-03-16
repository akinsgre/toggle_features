class WelcomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    @achievements = CodeAchievement.find(:all)
    logger.info "Has this many achievements " + @achievements.size.to_s
  end
end



