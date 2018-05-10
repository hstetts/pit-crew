class MultistepFormController < ApplicationController
  include Wicked::Wizard

  steps :customer_validation, :contact_details

  def show
    @user = User.new
    render_wizard
  end

  def update
    @user = current_user
    case steps
    when :existing_customer
    @user.update_attributes(params[:user])
    end
    render_wizard @user
  end

end
