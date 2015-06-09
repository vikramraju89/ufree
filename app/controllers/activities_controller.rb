class ActivitiesController < ApplicationController
before_action :check_if_owner, only: [:edit, :update, :destroy]

def check_if_owner
  activity = Activity.find(params[:id])
  if activity.user_id != current_user.id
    redirect_to "/activities", notice: "Please contact the organizer at activity.user_id"
  end
end


  def index
    @activities = Activity.all
  end

  def show
    @activity = Activity.find(params[:id])
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new
    @activity.title = params[:title]
    @activity.location = params[:location]
    @activity.user_id = params[:user_id]
    @activity.date = params[:date]
    @activity.description = params[:description]
    @activity.mood_id = params[:mood_id]

    if @activity.save
      redirect_to "/activities", :notice => "Activity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    @activity = Activity.find(params[:id])

    @activity.title = params[:title]
    @activity.location = params[:location]
    @activity.user_id = params[:user_id]
    @activity.date = params[:date]
    @activity.description = params[:description]
    @activity.mood_id = params[:mood_id]

    if @activity.save
      redirect_to "/activities", :notice => "Activity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @activity = Activity.find(params[:id])

    @activity.destroy

    redirect_to "/activities", :notice => "Activity deleted."
  end
end
