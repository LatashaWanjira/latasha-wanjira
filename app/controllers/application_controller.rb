class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # def after_sign_in_path_for(resource)
  #   redirect_to new_skill_path(@skill)
  # end
end
