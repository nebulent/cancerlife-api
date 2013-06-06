class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :current_tenant_id, :users_on_current_tenant

  def current_tenant_id
    Site.find_by_subdomain(request.subdomain).id
  end

  def users_on_current_tenant
    Site.find(current_tenant_id).users
  end
end
