class EpisodesController < ApplicationController
  http_basic_authenticate_with name: "matt", password: "mypassword123", except: [:index, :show]
  
  def index
    @episodes = Episode.all
  end
  
  def show
    @episode = Episode.find(params[:id])
  end
  
  def new
    @episode = Episode.new
  end
  
  def edit
    @episode = Episode.find(params[:id])
  end
  
  def create
    @episode = Episode.new(episode_params)
    
    if @episode.save
      redirect_to @episode
    else
      render 'new'
    end
  end
  
def update
  @episode = Episode.find(params[:id])
  if @episode.update(episode_params)
    redirect_to @episode
  else
    render 'edit'
  end
end  

def destroy
  @episode = Episode.find(params[:id])
  @episode.destroy
  
  redirect_to episodes_path
end
  
  private
    def episode_params
      params.require(:episode).permit(:eptitle, :show, :media, :disctitle)
    end
end
