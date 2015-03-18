class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :load_catalog
  #
  # def load_catalog
  #   @catalog ||= Catalog.first
  # end
end
