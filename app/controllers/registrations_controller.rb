class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/expenses' # Or :prefix_to_your_route
  end
end

