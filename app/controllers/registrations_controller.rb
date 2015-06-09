class RegistrationsController < ApplicationController
  def index
    @registrations = Registration.all
  end

  def show
    @registration = Registration.find(params[:id])
  end

  def new
    @registration = Registration.new
  end

  def create
    @registration = Registration.new
    @registration.user_id = current_user.id
    @registration.activity_id = params[:activity_id]

    if @registration.save
      redirect_to "/activities", :notice => "You have been registered for this event."
    else
      render 'new'
    end
  end

  def edit
    @registration = Registration.find(params[:id])
  end

  def update
    @registration = Registration.find(params[:id])
    @registration.user_id = params[:user_id]
    @registration.activity_id = params[:activity_id]

    if @registration.save
      redirect_to "/registrations", :notice => "Registration updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @registration = Registration.find(params[:id])

    @registration.destroy

    redirect_to "/activities", :notice => "You have been removed from this event."
  end
end
