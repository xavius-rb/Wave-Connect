class ServicesController < ApplicationController
  include Xavius::Controllers::Base
  private
    # Only allow a list of trusted parameters through.
    def service_params
      params.require(:service).permit(:name, :technology, :repository_url)
    end

    alias_method :resource_params, :service_params
end
