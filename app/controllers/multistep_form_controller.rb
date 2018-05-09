class MultistepFormController < ApplicationController
  include Wicked::Wizard

  steps :customer_validation, :contact_details

  def show
    @user = User.new
    render_wizard
  end

  def update
    @user.update_attributes(params[:user])
    render_wizard @user
  end

end
