class UsersController < ApplicationController
  def new
    @user = User.new
    render_wizard
  end

  def create
    @user = User.new(params[:user])

    @user.first_name = params[:user][:first_name]
    @user.last_name = params[:user][:last_name]
    @user.phone_number = params[:user][:phone_number]
    @user.phone_type = params[:user][:phone_type]
    @user.address = params[:user][:address]
    @user.city = params[:user][:city]
    @user.state = params[:user][:state]
    @user.zip_code = params[:user][:zip_code]
    @user.address_type= params[:user][:address_type]
    @user.preferred_contact = params[:user][:preferred_contact]
    @user.marketing_opt = params[:user][:marketing_opt]
    @user.email = params[:user][:email]
    @user.existing_customer = params[:user][:existing_customer]

    if @user.save
      flash[:success] = "User Added to Database!"
      redirect_to multistep_form_path(:customer_validation)
    else
      render 'new'
    end
  end

end
