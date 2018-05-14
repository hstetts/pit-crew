class MultistepFormController < ApplicationController
  include Wicked::Wizard

  steps :customer_validation, :appointment

  def show
    @user = User.new
    render_wizard
  end

  def update
     @user = User.new
    # case steps
    # when :existing_customer
    # @user.update_attributes(params[:user])
    # end
    # render_wizard @user
  end

end
