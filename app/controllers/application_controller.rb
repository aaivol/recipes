class ApplicationController < ActionController::Base
  include SessionHelper
  before_action :require_login, :set_locale

  private
  def require_login
    redirect_to session_login_url unless signed_in?
  end

  def default_url_options
    {locale: I18n.locale}
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale || session[:locale]
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ?
      parsed_locale.to_sym :
      nil
  end
end
