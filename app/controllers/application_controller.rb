class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include Pundit

  before_action :authenticate_user!

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def user_not_authorized
    flash[:alert] = I18n.t("pundit.errors.not_authorized")
    redirect_to(request.referrer || root_path)
  end
end
