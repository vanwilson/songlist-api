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
end
