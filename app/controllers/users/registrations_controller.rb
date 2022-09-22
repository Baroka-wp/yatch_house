class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  def create
    super #Nothing special here.
  end

  protected

  def sign_up(resource_name, resource)
    true
  end

  private

  def respond_with(resource, _opts = {})
    resource.persisted? ? register_success : register_failed
  end

  def register_success
    render json: { message: 'Signed up.' }
  end

  def register_failed
    render json: { message: 'Signed up failure.' }
  end
end
