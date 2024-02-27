class SonglistsController < ApplicationController
  def index
    @songlists = Songlist.all
    render :index
  end

  def create
    @songlist = Songlist.create(
      user_id: params[:user_id],
      title: params[:title],
      for_date: params[:for_date],
    )
    render :show
  end

  def show
    @songlist = Songlist.find_by(id: params[:id])
    render :show
  end

  def update
    @songlist = Songlist.find_by(id: params[:id])
    @songlist.update(
      title: params[:title] || @songlist.title,
      for_date: params[:for_date] || @songlist.for_date,
    )
    render :show
  end

  def destroy
    @songlist = Songlist.find_by(id: params[:id])
    @songlist.destroy
    render json: { message: "Songlist destroyed successfully" }
  end
end
