class AppointmentController < ApplicationController
  include Wicked::Wizard

  steps :customer_validation, :schedule

  def show

    render_wizard
  end

  def update


  end

end
