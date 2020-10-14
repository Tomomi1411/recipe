class GourmetsController < ApplicationController

  def index

  end
  
  def show
    @gourmet = Gourmet.find(params[:id])
  end

  def new
    @gourmet = Gourmet.new
  end

  def create
    @gourmet = Gourmet.new(gourmet_params)
    @gourmet.user_id = current_user.id
    @gourmet.save
    redirect_to gourmet_path(@gourmet)
  end
  

  

  def edit
    
  end
  
  private
  def gourmet_params
    params.require(:gourmet).permit(:title, :body, :image )
  end
end