class MultistepFormController < Wicked::WizardController
  include Wicked::Wizard

  steps :customer_validation, :contact_details

  def show
    @user = User.new
    render_wizard
  end

  def update
    @user = User.new
    @user = User.update_attributes(params[:user])
    render_wizard @user
  end

end
