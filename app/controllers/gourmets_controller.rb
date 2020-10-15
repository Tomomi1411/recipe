class GourmetsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
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
    if @gourmet.save
      redirect_to gourmet_path(@gourmet), notice: '更新に成功しました。'
    else
      render :new
    end
  end

  def edit
    @gourmet = Gourmet.find(params[:id])
    if @gourmet.user != current_user
      redirect_to gourmets_path, alert: '不正なアクセスです。'
    end
  end
  

  def update
    @gourmet = Gourmet.find(params[:id])
    if @gourmet.update(gourmet_params)
      redirect_to gourmet_path(@gourmet), notice: '更新に成功しました。'
    else
      render :edit
    end
  end

  def destroy
    gourmet = Gourmet.find(params[:id])
    gourmet.destroy
    redirect_to gourmets_path
  end

  
  private
  def gourmet_params
    params.require(:gourmet).permit(:title, :body, :image )
  end
end