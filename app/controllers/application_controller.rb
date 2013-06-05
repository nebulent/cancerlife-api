class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_tenant_id

  def current_tenant_id
    Site.find_by_subdomain(request.subdomain).id
  end
end
