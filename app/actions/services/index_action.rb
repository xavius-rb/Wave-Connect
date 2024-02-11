class Services::IndexAction < Xavius::Actions::Base
  def perform
    resource_class.order(created_at: :desc)
  end
end
