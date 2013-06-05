class Subdomain
  def self.matches?(request)
    request.subdomain.present? && request.subdomain != "www" && Site.find_by_subdomain(request.subdomain).present?
  end
end
