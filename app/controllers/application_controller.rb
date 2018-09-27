class ApplicationController < ActionController::Base
  # skip_before_action :verify_authenticity_token, if: :json_request?if: :json_request?
  skip_before_action :verify_authenticity_token, only: [:update]

  def json_request?
    request.format.json?
  end
end
