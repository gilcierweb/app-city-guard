class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # protect_from_forgery with: :null_session
  include Pagy::Backend

  layout :layout_by_resource

  def route_not_found
    render file: Rails.public_path.join('404.html'), status: :not_found, layout: false
  end

  def after_sign_in_path_for(resource)
    admin_root_path
  end

  private

  def layout_by_resource
    if devise_controller?
      "auth"
    else
      "application"
    end
  end
end
