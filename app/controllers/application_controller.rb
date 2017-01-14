class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def helloworld
    value = { helloworld: "Hello, world!" }
    render json: value
  end

  def tenant_history
    # One object for each property that they've stayed at
  end

  def landlord_history
    # One object per property that they own
  end

  def property_history
    # One aggregate object of all tenancies
  end


end
