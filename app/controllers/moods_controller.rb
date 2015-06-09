class MoodsController < ApplicationController


  def movie
    return Movie.find_by({ :id => self.movie_id })
  end

  def index
    @moods = Mood.all
  end

  def show
    @mood = Mood.find(params[:id])
  end

  def new
    @mood = Mood.new
  end

  def create
    @mood = Mood.new
    @mood.mood_name = params[:mood_name]
    @mood.description = params[:description]

    if @mood.save
      redirect_to "/moods", :notice => "Mood created successfully."
    else
      render 'new'
    end
  end

  def edit
    @mood = Mood.find(params[:id])
  end

  def update
    @mood = Mood.find(params[:id])

    @mood.mood_name = params[:mood_name]
    @mood.description = params[:description]

    if @mood.save
      redirect_to "/moods", :notice => "Mood updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @mood = Mood.find(params[:id])

    @mood.destroy

    redirect_to "/moods", :notice => "Mood deleted."
  end
end
