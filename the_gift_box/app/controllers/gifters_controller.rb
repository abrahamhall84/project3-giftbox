class GiftersController < ApplicationController
    before_action :find_gifter_by_id(params[:id]), only: [:edit, :show, :destroy, :add_item, :remove_item]
  def index
    @gifters = Gifter.all
  end

  def create
    Gifter.create gifter_params
  end

  def new
    @gifter = Gifter.new
  end

  def show
    @item.update_attributes item_params
  end

  def edit
  end

  def add_item
  end

  def remove_item
  end 

  def destroy
    @item.destroy
  end

  private
  def gifter_params
    params.require(:gifter).permit(:first_name, :last_name, :username, :email, :address, :phone_number, :password)
  end

  def item_params
    params.require(:item).permit(:name, :quantity)
  end

end



class MoviesController < ApplicationController
  before_action :find_movie, only: [:edit, :show, :destroy, :add_actor, :remove_actor]
  
  def index
    @movies = Movie.all
  end

  def create
    Movie.create movie_params 
    redirect_to movies_path
  end

  def new
    @movie = Movie.new
  end

  def edit
  end

  def show
    @actors = Actor.all - @movie.actors
  end

  def update
    @item.update_attributes item_params
    redirect_to @item
  end

  def destroy
    @item.destroy
    redirect_to items_path
  end

  def add_actor
    actor = Actor.find(actor_params[:id])
    unless @movie.actors.include? actor
      @movie.actors << actor
    end
    redirect_to @movie
  end

  def remove_actor
    @movie.actors.delete(Actor.find(params[:actor_id]))
    redirect_to @movie 
  end

  private
  

  

  def find_movie
    @movie = Movie.find(params[:id])
  end
end