class GourmetsController < ApplicationController

  def index
    @gourmets = Gourmet.all
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
  

  def update
    @gourmet = Gourmet.find(params[:id])
    @gourmet.update(gourmet_params)
    redirect_to gourmet_path(@gourmet)
  end

  def edit
    @gourmet = Gourmet.find(params[:id])
  end
  
  private
  def gourmet_params
    params.require(:gourmet).permit(:title, :body, :image )
  end
end