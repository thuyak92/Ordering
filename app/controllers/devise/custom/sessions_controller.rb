class Devise::Custom::SessionsController < Devise::SessionsController
  skip_authorization_check
  skip_before_filter :verify_authenticity_token
end
